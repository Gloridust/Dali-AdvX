// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedRecord _$FeedRecordFromJson(Map<String, dynamic> json) {
  return _FeedRecord.fromJson(json);
}

/// @nodoc
mixin _$FeedRecord {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  set createDate(DateTime value) => throw _privateConstructorUsedError;
  String get additionalText => throw _privateConstructorUsedError;
  set additionalText(String value) => throw _privateConstructorUsedError;
  String get mediaUrl => throw _privateConstructorUsedError;
  set mediaUrl(String value) => throw _privateConstructorUsedError;
  String get databaseId => throw _privateConstructorUsedError;
  set databaseId(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedRecordCopyWith<FeedRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedRecordCopyWith<$Res> {
  factory $FeedRecordCopyWith(
          FeedRecord value, $Res Function(FeedRecord) then) =
      _$FeedRecordCopyWithImpl<$Res, FeedRecord>;
  @useResult
  $Res call(
      {String id,
      DateTime createDate,
      String additionalText,
      String mediaUrl,
      String databaseId});
}

/// @nodoc
class _$FeedRecordCopyWithImpl<$Res, $Val extends FeedRecord>
    implements $FeedRecordCopyWith<$Res> {
  _$FeedRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createDate = null,
    Object? additionalText = null,
    Object? mediaUrl = null,
    Object? databaseId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      additionalText: null == additionalText
          ? _value.additionalText
          : additionalText // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      databaseId: null == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedRecordImplCopyWith<$Res>
    implements $FeedRecordCopyWith<$Res> {
  factory _$$FeedRecordImplCopyWith(
          _$FeedRecordImpl value, $Res Function(_$FeedRecordImpl) then) =
      __$$FeedRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createDate,
      String additionalText,
      String mediaUrl,
      String databaseId});
}

/// @nodoc
class __$$FeedRecordImplCopyWithImpl<$Res>
    extends _$FeedRecordCopyWithImpl<$Res, _$FeedRecordImpl>
    implements _$$FeedRecordImplCopyWith<$Res> {
  __$$FeedRecordImplCopyWithImpl(
      _$FeedRecordImpl _value, $Res Function(_$FeedRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createDate = null,
    Object? additionalText = null,
    Object? mediaUrl = null,
    Object? databaseId = null,
  }) {
    return _then(_$FeedRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      additionalText: null == additionalText
          ? _value.additionalText
          : additionalText // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      databaseId: null == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedRecordImpl extends _FeedRecord {
  _$FeedRecordImpl(
      {required this.id,
      required this.createDate,
      required this.additionalText,
      required this.mediaUrl,
      required this.databaseId})
      : super._();

  factory _$FeedRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedRecordImplFromJson(json);

  @override
  String id;
  @override
  DateTime createDate;
  @override
  String additionalText;
  @override
  String mediaUrl;
  @override
  String databaseId;

  @override
  String toString() {
    return 'FeedRecord(id: $id, createDate: $createDate, additionalText: $additionalText, mediaUrl: $mediaUrl, databaseId: $databaseId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedRecordImplCopyWith<_$FeedRecordImpl> get copyWith =>
      __$$FeedRecordImplCopyWithImpl<_$FeedRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedRecordImplToJson(
      this,
    );
  }
}

abstract class _FeedRecord extends FeedRecord {
  factory _FeedRecord(
      {required String id,
      required DateTime createDate,
      required String additionalText,
      required String mediaUrl,
      required String databaseId}) = _$FeedRecordImpl;
  _FeedRecord._() : super._();

  factory _FeedRecord.fromJson(Map<String, dynamic> json) =
      _$FeedRecordImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  DateTime get createDate;
  set createDate(DateTime value);
  @override
  String get additionalText;
  set additionalText(String value);
  @override
  String get mediaUrl;
  set mediaUrl(String value);
  @override
  String get databaseId;
  set databaseId(String value);
  @override
  @JsonKey(ignore: true)
  _$$FeedRecordImplCopyWith<_$FeedRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
