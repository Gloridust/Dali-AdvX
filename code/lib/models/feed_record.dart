import 'package:dali_app/services/database_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_record.freezed.dart';
part 'feed_record.g.dart';

@unfreezed
class FeedRecord extends AppDatabaseEntity with _$FeedRecord {
  factory FeedRecord({
    required String id,
    required DateTime createDate,
    required String additionalText,
    required String mediaUrl,
    required String databaseId,
  }) = _FeedRecord;

  FeedRecord._();

  factory FeedRecord.fromJson(Map<String, dynamic> json) =>
      _$FeedRecordFromJson(json);
}
