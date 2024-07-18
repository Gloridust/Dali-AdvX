import 'dart:convert';

import 'package:dali_app/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:crypto/crypto.dart';

final textToSpeechServiceProvider = Provider<TextToSpeechService>((ref) {
  return TextToSpeechService(apiKey: apiKey_3);
});

class TextToSpeechService {
  final String apiKey;
  final String apiUrl = '$apiBase_3/audio/speech';
  final Map<String, String> _cache = {};

  TextToSpeechService({required this.apiKey});

  Future<String> getAudioFilePath(String text) async {
    // Generate a unique hash for the text
    final textHash = md5.convert(utf8.encode(text)).toString();

    // Check if we have a cached file path
    if (_cache.containsKey(textHash)) {
      final cachedPath = _cache[textHash]!;
      if (await File(cachedPath).exists()) {
        return cachedPath;
      }
    }

    // If not cached or file doesn't exist, generate new audio
    final audioData = await _fetchAudioData(text);
    final filePath = await _saveAudioToFile(audioData, textHash);

    // Cache the file path
    _cache[textHash] = filePath;

    return filePath;
  }

  Future<List<int>> _fetchAudioData(String text) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'model': 'tts-1',
        'input': text,
        'voice': 'alloy',
      }),
    );

    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception('Failed to convert text to speech: ${response.body}');
    }
  }

  Future<String> _saveAudioToFile(List<int> audioData, String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$fileName.mp3';
    await File(filePath).writeAsBytes(audioData);
    return filePath;
  }

  void clearCache() {
    _cache.clear();
  }

  Future<void> removeOldCacheFiles() async {
    final directory = await getApplicationDocumentsDirectory();
    final files = directory.listSync();
    for (var file in files) {
      if (file is File && file.path.endsWith('.mp3')) {
        if (!_cache.values.contains(file.path)) {
          await file.delete();
        }
      }
    }
  }
}
