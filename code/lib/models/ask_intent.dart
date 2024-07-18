import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_intent.freezed.dart';
part 'ask_intent.g.dart';

@freezed
class AskIntent with _$AskIntent {
  const factory AskIntent({
    required String type,
    required String sql,
    // required Map<String, dynamic> parameters,
  }) = _AskIntent;

  factory AskIntent.fromJson(Map<String, dynamic> json) =>
      _$AskIntentFromJson(json);
}

enum IntentType {
  orderQuery,
  eventQuery,
  chatQuery,
  knowledgeQuery,
  contactQuery,
  unknown
}
