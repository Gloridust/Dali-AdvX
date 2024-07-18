// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AskIntent _$AskIntentFromJson(Map<String, dynamic> json) {
  return _AskIntent.fromJson(json);
}

/// @nodoc
mixin _$AskIntent {
  String get type => throw _privateConstructorUsedError;
  String get sql => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskIntentCopyWith<AskIntent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskIntentCopyWith<$Res> {
  factory $AskIntentCopyWith(AskIntent value, $Res Function(AskIntent) then) =
      _$AskIntentCopyWithImpl<$Res, AskIntent>;
  @useResult
  $Res call({String type, String sql});
}

/// @nodoc
class _$AskIntentCopyWithImpl<$Res, $Val extends AskIntent>
    implements $AskIntentCopyWith<$Res> {
  _$AskIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? sql = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sql: null == sql
          ? _value.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskIntentImplCopyWith<$Res>
    implements $AskIntentCopyWith<$Res> {
  factory _$$AskIntentImplCopyWith(
          _$AskIntentImpl value, $Res Function(_$AskIntentImpl) then) =
      __$$AskIntentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String sql});
}

/// @nodoc
class __$$AskIntentImplCopyWithImpl<$Res>
    extends _$AskIntentCopyWithImpl<$Res, _$AskIntentImpl>
    implements _$$AskIntentImplCopyWith<$Res> {
  __$$AskIntentImplCopyWithImpl(
      _$AskIntentImpl _value, $Res Function(_$AskIntentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? sql = null,
  }) {
    return _then(_$AskIntentImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sql: null == sql
          ? _value.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskIntentImpl implements _AskIntent {
  const _$AskIntentImpl({required this.type, required this.sql});

  factory _$AskIntentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskIntentImplFromJson(json);

  @override
  final String type;
  @override
  final String sql;

  @override
  String toString() {
    return 'AskIntent(type: $type, sql: $sql)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskIntentImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sql, sql) || other.sql == sql));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, sql);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskIntentImplCopyWith<_$AskIntentImpl> get copyWith =>
      __$$AskIntentImplCopyWithImpl<_$AskIntentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskIntentImplToJson(
      this,
    );
  }
}

abstract class _AskIntent implements AskIntent {
  const factory _AskIntent(
      {required final String type,
      required final String sql}) = _$AskIntentImpl;

  factory _AskIntent.fromJson(Map<String, dynamic> json) =
      _$AskIntentImpl.fromJson;

  @override
  String get type;
  @override
  String get sql;
  @override
  @JsonKey(ignore: true)
  _$$AskIntentImplCopyWith<_$AskIntentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
