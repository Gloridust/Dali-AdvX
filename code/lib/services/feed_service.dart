import 'dart:convert';
import 'dart:typed_data';
import 'package:dali_app/constants.dart';
import 'package:dali_app/models/information.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
import 'package:image/image.dart' as img;

class FeedService {
  final String openaiApiKey;
  final String openaiApiBase;
  final Database database;

  FeedService({
    required this.openaiApiKey,
    required this.openaiApiBase,
    required this.database,
  });

  Future<String?> analyzeImage(Uint8List imageBytes) async {
    // Decode the image
    img.Image? image = img.decodeImage(imageBytes);

    if (image == null) {
      print('Failed to decode image');
      return null;
    }

    // Resize the image if it's too large
    if (image.width > 800 || image.height > 800) {
      image = img.copyResize(image,
          width: 800, height: 800, interpolation: img.Interpolation.average);
    }

    // Compress the image
    List<int> compressedBytes = img.encodeJpg(image, quality: 85);

    // Convert to base64
    String base64Image = base64Encode(compressedBytes);

    final response = await http.post(
      Uri.parse('$openaiApiBase/chat/completions'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $openaiApiKey',
      },
      body: jsonEncode({
        'model': 'gpt-4o',
        'messages': [
          {
            'role': 'user',
            'content': [
              {'type': 'text', 'text': UserPrompt.summarizeImage},
              {
                'type': 'image_url',
                'image_url': {'url': 'data:image/jpeg;base64,$base64Image'}
              }
            ]
          }
        ],
        'max_tokens': 1024,
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
      return jsonResponse['choices'][0]['message']['content'];
    } else {
      print('Failed to analyze image: ${response.body}');
      return null;
    }
  }

  Future<Map<String, dynamic>> structureData(String summary) async {
    final prompt = '''Summary to analyze:  $summary''';

    final response = await http.post(
      Uri.parse('$openaiApiBase/chat/completions'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $openaiApiKey',
      },
      body: jsonEncode({
        'model': 'gpt-4o',
        // 'model': 'gpt-3.5-turbo',
        'messages': [
          {'role': 'system', 'content': SystemPrompt.generateData},
          {'role': 'user', 'content': prompt}
        ],
        'temperature': 0.3,
        'max_tokens': 500,
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
      final content = jsonResponse['choices'][0]['message']['content'];
      print(content);
      final jsonString = _extractJsonString(content);
      return jsonDecode(jsonString);
    } else {
      throw Exception('Failed to structure data: ${response.body}');
    }
  }

  String _extractJsonString(String input) {
    final startIndex = input.indexOf('{');
    final endIndex = input.lastIndexOf('}');
    if (startIndex != -1 && endIndex != -1) {
      return input.substring(startIndex, endIndex + 1);
    } else {
      throw FormatException('No valid JSON object found in input string');
    }
  }

  Future<String> insertInformationData(Information information) async {
    final String uniqueId = information.id.isNotEmpty
        ? information.id
        : DateTime.now().millisecondsSinceEpoch.toString();

    final Map<String, dynamic> informationMap =
        information.copyWith(id: uniqueId).toJson();

    // Convert nested objects to JSON strings
    informationMap['location'] = jsonEncode(informationMap['location']);
    informationMap['people'] = jsonEncode(informationMap['people']);
    informationMap['identifiers'] = jsonEncode(informationMap['identifiers']);
    informationMap['financial'] = jsonEncode(informationMap['financial']);
    informationMap['travel'] = jsonEncode(informationMap['travel']);
    informationMap['product'] = jsonEncode(informationMap['product']);
    informationMap['accommodation'] =
        jsonEncode(informationMap['accommodation']);
    informationMap['tags'] = jsonEncode(informationMap['tags']);
    informationMap['additionalInfo'] =
        jsonEncode(informationMap['additionalInfo']);

    // Insert the data into the database
    await database.insert('information', informationMap);

    print(informationMap);

    // Return the generated unique ID
    return uniqueId;
  }

  Future<String> insertOrderData(Map<String, dynamic> orderData) async {
    final String uniqueId = DateTime.now().millisecondsSinceEpoch.toString();

    // Add the unique ID to the orderData
    orderData['id'] = uniqueId;

    // Insert the data into the database
    await database.insert('orders', orderData);

    // Return the generated unique ID
    return uniqueId;
  }
}
