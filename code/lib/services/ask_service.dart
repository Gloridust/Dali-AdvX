import 'dart:convert';
import 'package:dali_app/constants.dart';
import 'package:dali_app/models/ask_intent.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';

class AskService {
  final String openaiApiKey;
  final String openaiApiBase;
  final Database database;

  AskService(
      {required this.openaiApiKey,
      required this.openaiApiBase,
      required this.database});

  Future<String> processQuery(String userQuery) async {
    try {
      AskIntent intent = await _convertToIntent(userQuery);
      List<Map<String, dynamic>> queryResults = await _searchDatabase(intent);
      if (kDebugMode) print(queryResults);
      String answer = await _generateAnswer(userQuery, intent, queryResults);
      return answer;
    } catch (e) {
      throw Exception('Failed to process query: $e');
    }
  }

  Future<AskIntent> _convertToIntent(String userQuery) async {
    final response = await http.post(
      Uri.parse('$openaiApiBase/chat/completions'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $openaiApiKey',
      },
      body: jsonEncode({
        'model': 'claude-3-5-[Desensitization, reference only]',
        'messages': [
          {'role': 'system', 'content': SystemPrompt.generateSQL()},
          {'role': 'user', 'content': UserPrompt.generateSQL(userQuery)}
        ],
        'temperature': 0.3,
        'max_tokens': 150,
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));

      final jsonString =
          _extractJsonString(jsonResponse['choices'][0]['message']['content']);
      final jsonData = jsonDecode(jsonString);
      print(jsonData);
      return AskIntent(type: jsonData['type'], sql: jsonData['sql']);
    } else {
      throw Exception('Failed to convert query to intent: ${response.body}');
    }
  }

  Future<List<Map<String, dynamic>>> _searchDatabase(AskIntent intent) async {
    try {
      return await database.rawQuery(intent.sql);
    } catch (e) {
      throw Exception('Failed to search database: $e');
    }
  }

  Future<String> _generateAnswer(String userQuery, AskIntent intent,
      List<Map<String, dynamic>> queryResults) async {
    final prompt = '''
    User Query: $userQuery

    SQL: ${intent.sql}

    Query Results: ${jsonEncode(queryResults)}

    Provide a concise, short and relevant answer. Focus only on the information directly related to the user's question.
    ''';

    final response = await http.post(
      Uri.parse('$openaiApiBase/chat/completions'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $openaiApiKey',
      },
      body: jsonEncode({
        'model': 'claude-3-5-sonnet-20240620',
        'messages': [
          {'role': 'system', 'content': SystemPrompt.generateAnswer},
          {'role': 'user', 'content': prompt}
        ],
        'temperature': 0.7,
        'max_tokens': 150,
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
      return jsonResponse['choices'][0]['message']['content'];
    } else {
      throw Exception('Failed to generate answer: ${response.body}');
    }
  }

  String convertToLowerCase(String query) {
    // Regular expression to match LIKE clauses
    final likePattern =
        RegExp(r'''(\w+)\s+LIKE\s+([\'"])(.+?)\2''', caseSensitive: false);

    // Function to process each match
    String replaceLike(Match match) {
      String column = match.group(1)!;
      String quote = match.group(2)!;
      String value = match.group(3)!;

      return 'LOWER($column) LIKE $quote${value.toLowerCase()}$quote';
    }

    // Replace all LIKE clauses
    String newQuery = query.replaceAllMapped(likePattern, replaceLike);

    return newQuery;
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
}
