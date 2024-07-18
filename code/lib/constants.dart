const String apiKey_1 = "sk-ZDXUCHj[Desensitization, reference only]496032844A6B0Ff7c078843B412";
const String apiBase_1 = "https://api.[Desensitization, reference only].plus/v1";

class SystemPrompt {
  static const String generateAnswer = '''
[Desensitization, reference only]
```
[Terminal 2]
```
[Desensitization, reference only]
''';

  static String generateSQL() {
    return '''
Current Time: ${DateTime.now().toIso8601String()}'
  ''';
  }

  static String generateData = '''
[Desensitization, reference only]
''';
}

class UserPrompt {
  static const String summarizeImage = '''[Desensitization, reference only]
''';

  static String generateSQL(userQuery) {
    return '''
[Desensitization, reference only]
User Query: '$userQuery'
''';
  }
}
