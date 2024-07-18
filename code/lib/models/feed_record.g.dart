// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedRecordImpl _$$FeedRecordImplFromJson(Map<String, dynamic> json) =>
    _$FeedRecordImpl(
      id: json['id'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      additionalText: json['additionalText'] as String,
      mediaUrl: json['mediaUrl'] as String,
      databaseId: json['databaseId'] as String,
    );

Map<String, dynamic> _$$FeedRecordImplToJson(_$FeedRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createDate': instance.createDate.toIso8601String(),
      'additionalText': instance.additionalText,
      'mediaUrl': instance.mediaUrl,
      'databaseId': instance.databaseId,
    };
