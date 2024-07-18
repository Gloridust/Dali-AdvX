// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Information _$InformationFromJson(Map<String, dynamic> json) {
  return _Information.fromJson(json);
}

/// @nodoc
mixin _$Information {
[Desensitization, reference only]

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InformationCopyWith<Information> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationCopyWith<$Res> {
  factory $InformationCopyWith(
          Information value, $Res Function(Information) then) =
      _$InformationCopyWithImpl<$Res, Information>;
  @useResult
  $Res call(
[Desensitization, reference only]

  $LocationCopyWith<$Res>? get location;
  $IdentifiersCopyWith<$Res>? get identifiers;
  $FinancialCopyWith<$Res>? get financial;
  $TravelCopyWith<$Res>? get travel;
  $ProductCopyWith<$Res>? get product;
  $AccommodationCopyWith<$Res>? get accommodation;
}

/// @nodoc
class _$InformationCopyWithImpl<$Res, $Val extends Information>
    implements $InformationCopyWith<$Res> {
  _$InformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentType = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? location = freezed,
    Object? people = freezed,
    Object? identifiers = freezed,
    Object? financial = freezed,
    Object? travel = freezed,
    Object? product = freezed,
    Object? accommodation = freezed,
    Object? tags = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
[Desensitization, reference only]
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifiersCopyWith<$Res>? get identifiers {
    if (_value.identifiers == null) {
      return null;
    }

    return $IdentifiersCopyWith<$Res>(_value.identifiers!, (value) {
      return _then(_value.copyWith(identifiers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FinancialCopyWith<$Res>? get financial {
    if (_value.financial == null) {
      return null;
    }

    return $FinancialCopyWith<$Res>(_value.financial!, (value) {
      return _then(_value.copyWith(financial: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelCopyWith<$Res>? get travel {
    if (_value.travel == null) {
      return null;
    }

    return $TravelCopyWith<$Res>(_value.travel!, (value) {
      return _then(_value.copyWith(travel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccommodationCopyWith<$Res>? get accommodation {
    if (_value.accommodation == null) {
      return null;
    }

    return $AccommodationCopyWith<$Res>(_value.accommodation!, (value) {
      return _then(_value.copyWith(accommodation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InformationImplCopyWith<$Res>
    implements $InformationCopyWith<$Res> {
  factory _$$InformationImplCopyWith(
          _$InformationImpl value, $Res Function(_$InformationImpl) then) =
      __$$InformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
[Desensitization, reference only]

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $IdentifiersCopyWith<$Res>? get identifiers;
  @override
  $FinancialCopyWith<$Res>? get financial;
  @override
  $TravelCopyWith<$Res>? get travel;
  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $AccommodationCopyWith<$Res>? get accommodation;
}

/// @nodoc
class __$$InformationImplCopyWithImpl<$Res>
    extends _$InformationCopyWithImpl<$Res, _$InformationImpl>
    implements _$$InformationImplCopyWith<$Res> {
  __$$InformationImplCopyWithImpl(
      _$InformationImpl _value, $Res Function(_$InformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentType = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? location = freezed,
    Object? people = freezed,
    Object? identifiers = freezed,
    Object? financial = freezed,
    Object? travel = freezed,
    Object? product = freezed,
    Object? accommodation = freezed,
    Object? tags = freezed,
    Object? additionalInfo = freezed,
  }) {
   [Desensitization, reference only]
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InformationImpl with DiagnosticableTreeMixin implements _Information {
  const _$InformationImpl(
      {required this.id,
      required this.contentType,
      this.title,
      this.description,
      this.date,
      this.time,
      this.location,
      final List<Person>? people,
      this.identifiers,
      this.financial,
      this.travel,
      this.product,
      this.accommodation,
      final List<String>? tags,
      final Map<String, dynamic>? additionalInfo})
      : _people = people,
        _tags = tags,
        _additionalInfo = additionalInfo;

  factory _$InformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InformationImplFromJson(json);

  @override
  final String id;
  @override
  final String contentType;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final Location? location;
  final List<Person>? _people;
  @override
  List<Person>? get people {
    final value = _people;
    if (value == null) return null;
    if (_people is EqualUnmodifiableListView) return _people;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Identifiers? identifiers;
  @override
  final Financial? financial;
  @override
  final Travel? travel;
  @override
  final Product? product;
  @override
  final Accommodation? accommodation;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _additionalInfo;
  @override
  Map<String, dynamic>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Information(id: $id, contentType: $contentType, title: $title, description: $description, date: $date, time: $time, location: $location, people: $people, identifiers: $identifiers, financial: $financial, travel: $travel, product: $product, accommodation: $accommodation, tags: $tags, additionalInfo: $additionalInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Information'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('contentType', contentType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('people', people))
      ..add(DiagnosticsProperty('identifiers', identifiers))
      ..add(DiagnosticsProperty('financial', financial))
      ..add(DiagnosticsProperty('travel', travel))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('accommodation', accommodation))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('additionalInfo', additionalInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._people, _people) &&
            (identical(other.identifiers, identifiers) ||
                other.identifiers == identifiers) &&
            (identical(other.financial, financial) ||
                other.financial == financial) &&
            (identical(other.travel, travel) || other.travel == travel) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.accommodation, accommodation) ||
                other.accommodation == accommodation) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._additionalInfo, _additionalInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      contentType,
      title,
      description,
      date,
      time,
      location,
      const DeepCollectionEquality().hash(_people),
      identifiers,
      financial,
      travel,
      product,
      accommodation,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_additionalInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InformationImplCopyWith<_$InformationImpl> get copyWith =>
      __$$InformationImplCopyWithImpl<_$InformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InformationImplToJson(
      this,
    );
  }
}

abstract class _Information implements Information {
  const factory _Information(
      {required final String id,
      required final String contentType,
      final String? title,
      final String? description,
      final String? date,
      final String? time,
      final Location? location,
      final List<Person>? people,
      final Identifiers? identifiers,
      final Financial? financial,
      final Travel? travel,
      final Product? product,
      final Accommodation? accommodation,
      final List<String>? tags,
      final Map<String, dynamic>? additionalInfo}) = _$InformationImpl;

  factory _Information.fromJson(Map<String, dynamic> json) =
      _$InformationImpl.fromJson;

  @override
  String get id;
  @override
  String get contentType;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get date;
  @override
  String? get time;
  @override
  Location? get location;
  @override
  List<Person>? get people;
  @override
  Identifiers? get identifiers;
  @override
  Financial? get financial;
  @override
  Travel? get travel;
  @override
  Product? get product;
  @override
  Accommodation? get accommodation;
  @override
  List<String>? get tags;
  @override
  Map<String, dynamic>? get additionalInfo;
  @override
  @JsonKey(ignore: true)
  _$$InformationImplCopyWith<_$InformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  Coordinates? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String? name, String? address, Coordinates? coordinates});

  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? address, Coordinates? coordinates});

  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$LocationImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl with DiagnosticableTreeMixin implements _Location {
  const _$LocationImpl({this.name, this.address, this.coordinates});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? name;
  @override
  final String? address;
  @override
  final Coordinates? coordinates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Location(name: $name, address: $address, coordinates: $coordinates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Location'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('coordinates', coordinates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, address, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? name,
      final String? address,
      final Coordinates? coordinates}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get name;
  @override
  String? get address;
  @override
  Coordinates? get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res, Coordinates>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res, $Val extends Coordinates>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesImplCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$CoordinatesImplCopyWith(
          _$CoordinatesImpl value, $Res Function(_$CoordinatesImpl) then) =
      __$$CoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$CoordinatesImplCopyWithImpl<$Res>
    extends _$CoordinatesCopyWithImpl<$Res, _$CoordinatesImpl>
    implements _$$CoordinatesImplCopyWith<$Res> {
  __$$CoordinatesImplCopyWithImpl(
      _$CoordinatesImpl _value, $Res Function(_$CoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CoordinatesImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesImpl with DiagnosticableTreeMixin implements _Coordinates {
  const _$CoordinatesImpl({this.latitude, this.longitude});

  factory _$CoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Coordinates'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      __$$CoordinatesImplCopyWithImpl<_$CoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesImplToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {final double? latitude, final double? longitude}) = _$CoordinatesImpl;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$CoordinatesImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  String get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call({String name, String? role});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? role});
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = freezed,
  }) {
    return _then(_$PersonImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl with DiagnosticableTreeMixin implements _Person {
  const _$PersonImpl({required this.name, this.role});

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  final String name;
  @override
  final String? role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Person(name: $name, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Person'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person implements Person {
  const factory _Person({required final String name, final String? role}) =
      _$PersonImpl;

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  String get name;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Identifiers _$IdentifiersFromJson(Map<String, dynamic> json) {
  return _Identifiers.fromJson(json);
}

/// @nodoc
mixin _$Identifiers {
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get bookingReference => throw _privateConstructorUsedError;
  String? get ticketNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentifiersCopyWith<Identifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifiersCopyWith<$Res> {
  factory $IdentifiersCopyWith(
          Identifiers value, $Res Function(Identifiers) then) =
      _$IdentifiersCopyWithImpl<$Res, Identifiers>;
  @useResult
  $Res call(
      {String? orderNumber, String? bookingReference, String? ticketNumber});
}

/// @nodoc
class _$IdentifiersCopyWithImpl<$Res, $Val extends Identifiers>
    implements $IdentifiersCopyWith<$Res> {
  _$IdentifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? bookingReference = freezed,
    Object? ticketNumber = freezed,
  }) {
    return _then(_value.copyWith(
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingReference: freezed == bookingReference
          ? _value.bookingReference
          : bookingReference // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketNumber: freezed == ticketNumber
          ? _value.ticketNumber
          : ticketNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentifiersImplCopyWith<$Res>
    implements $IdentifiersCopyWith<$Res> {
  factory _$$IdentifiersImplCopyWith(
          _$IdentifiersImpl value, $Res Function(_$IdentifiersImpl) then) =
      __$$IdentifiersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderNumber, String? bookingReference, String? ticketNumber});
}

/// @nodoc
class __$$IdentifiersImplCopyWithImpl<$Res>
    extends _$IdentifiersCopyWithImpl<$Res, _$IdentifiersImpl>
    implements _$$IdentifiersImplCopyWith<$Res> {
  __$$IdentifiersImplCopyWithImpl(
      _$IdentifiersImpl _value, $Res Function(_$IdentifiersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? bookingReference = freezed,
    Object? ticketNumber = freezed,
  }) {
    return _then(_$IdentifiersImpl(
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingReference: freezed == bookingReference
          ? _value.bookingReference
          : bookingReference // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketNumber: freezed == ticketNumber
          ? _value.ticketNumber
          : ticketNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentifiersImpl with DiagnosticableTreeMixin implements _Identifiers {
  const _$IdentifiersImpl(
      {this.orderNumber, this.bookingReference, this.ticketNumber});

  factory _$IdentifiersImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentifiersImplFromJson(json);

  @override
  final String? orderNumber;
  @override
  final String? bookingReference;
  @override
  final String? ticketNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Identifiers(orderNumber: $orderNumber, bookingReference: $bookingReference, ticketNumber: $ticketNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Identifiers'))
      ..add(DiagnosticsProperty('orderNumber', orderNumber))
      ..add(DiagnosticsProperty('bookingReference', bookingReference))
      ..add(DiagnosticsProperty('ticketNumber', ticketNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentifiersImpl &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.bookingReference, bookingReference) ||
                other.bookingReference == bookingReference) &&
            (identical(other.ticketNumber, ticketNumber) ||
                other.ticketNumber == ticketNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderNumber, bookingReference, ticketNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentifiersImplCopyWith<_$IdentifiersImpl> get copyWith =>
      __$$IdentifiersImplCopyWithImpl<_$IdentifiersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentifiersImplToJson(
      this,
    );
  }
}

abstract class _Identifiers implements Identifiers {
  const factory _Identifiers(
      {final String? orderNumber,
      final String? bookingReference,
      final String? ticketNumber}) = _$IdentifiersImpl;

  factory _Identifiers.fromJson(Map<String, dynamic> json) =
      _$IdentifiersImpl.fromJson;

  @override
  String? get orderNumber;
  @override
  String? get bookingReference;
  @override
  String? get ticketNumber;
  @override
  @JsonKey(ignore: true)
  _$$IdentifiersImplCopyWith<_$IdentifiersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Financial _$FinancialFromJson(Map<String, dynamic> json) {
  return _Financial.fromJson(json);
}

/// @nodoc
mixin _$Financial {
  double? get totalAmount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinancialCopyWith<Financial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialCopyWith<$Res> {
  factory $FinancialCopyWith(Financial value, $Res Function(Financial) then) =
      _$FinancialCopyWithImpl<$Res, Financial>;
  @useResult
  $Res call({double? totalAmount, String? currency, String? paymentMethod});
}

/// @nodoc
class _$FinancialCopyWithImpl<$Res, $Val extends Financial>
    implements $FinancialCopyWith<$Res> {
  _$FinancialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? currency = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialImplCopyWith<$Res>
    implements $FinancialCopyWith<$Res> {
  factory _$$FinancialImplCopyWith(
          _$FinancialImpl value, $Res Function(_$FinancialImpl) then) =
      __$$FinancialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? totalAmount, String? currency, String? paymentMethod});
}

/// @nodoc
class __$$FinancialImplCopyWithImpl<$Res>
    extends _$FinancialCopyWithImpl<$Res, _$FinancialImpl>
    implements _$$FinancialImplCopyWith<$Res> {
  __$$FinancialImplCopyWithImpl(
      _$FinancialImpl _value, $Res Function(_$FinancialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? currency = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$FinancialImpl(
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancialImpl with DiagnosticableTreeMixin implements _Financial {
  const _$FinancialImpl({this.totalAmount, this.currency, this.paymentMethod});

  factory _$FinancialImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialImplFromJson(json);

  @override
  final double? totalAmount;
  @override
  final String? currency;
  @override
  final String? paymentMethod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Financial(totalAmount: $totalAmount, currency: $currency, paymentMethod: $paymentMethod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Financial'))
      ..add(DiagnosticsProperty('totalAmount', totalAmount))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialImpl &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalAmount, currency, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialImplCopyWith<_$FinancialImpl> get copyWith =>
      __$$FinancialImplCopyWithImpl<_$FinancialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancialImplToJson(
      this,
    );
  }
}

abstract class _Financial implements Financial {
  const factory _Financial(
      {final double? totalAmount,
      final String? currency,
      final String? paymentMethod}) = _$FinancialImpl;

  factory _Financial.fromJson(Map<String, dynamic> json) =
      _$FinancialImpl.fromJson;

  @override
  double? get totalAmount;
  @override
  String? get currency;
  @override
  String? get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$FinancialImplCopyWith<_$FinancialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return _Travel.fromJson(json);
}

/// @nodoc
mixin _$Travel {
  TravelLocation? get departure => throw _privateConstructorUsedError;
  TravelLocation? get arrival => throw _privateConstructorUsedError;
  String? get carrier => throw _privateConstructorUsedError;
  String? get seat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res, Travel>;
  @useResult
  $Res call(
      {TravelLocation? departure,
      TravelLocation? arrival,
      String? carrier,
      String? seat});

  $TravelLocationCopyWith<$Res>? get departure;
  $TravelLocationCopyWith<$Res>? get arrival;
}

/// @nodoc
class _$TravelCopyWithImpl<$Res, $Val extends Travel>
    implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = freezed,
    Object? arrival = freezed,
    Object? carrier = freezed,
    Object? seat = freezed,
  }) {
    return _then(_value.copyWith(
      departure: freezed == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as TravelLocation?,
      arrival: freezed == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as TravelLocation?,
      carrier: freezed == carrier
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as String?,
      seat: freezed == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelLocationCopyWith<$Res>? get departure {
    if (_value.departure == null) {
      return null;
    }

    return $TravelLocationCopyWith<$Res>(_value.departure!, (value) {
      return _then(_value.copyWith(departure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelLocationCopyWith<$Res>? get arrival {
    if (_value.arrival == null) {
      return null;
    }

    return $TravelLocationCopyWith<$Res>(_value.arrival!, (value) {
      return _then(_value.copyWith(arrival: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelImplCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$$TravelImplCopyWith(
          _$TravelImpl value, $Res Function(_$TravelImpl) then) =
      __$$TravelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TravelLocation? departure,
      TravelLocation? arrival,
      String? carrier,
      String? seat});

  @override
  $TravelLocationCopyWith<$Res>? get departure;
  @override
  $TravelLocationCopyWith<$Res>? get arrival;
}

/// @nodoc
class __$$TravelImplCopyWithImpl<$Res>
    extends _$TravelCopyWithImpl<$Res, _$TravelImpl>
    implements _$$TravelImplCopyWith<$Res> {
  __$$TravelImplCopyWithImpl(
      _$TravelImpl _value, $Res Function(_$TravelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = freezed,
    Object? arrival = freezed,
    Object? carrier = freezed,
    Object? seat = freezed,
  }) {
    return _then(_$TravelImpl(
      departure: freezed == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as TravelLocation?,
      arrival: freezed == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as TravelLocation?,
      carrier: freezed == carrier
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as String?,
      seat: freezed == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelImpl with DiagnosticableTreeMixin implements _Travel {
  const _$TravelImpl({this.departure, this.arrival, this.carrier, this.seat});

  factory _$TravelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelImplFromJson(json);

  @override
  final TravelLocation? departure;
  @override
  final TravelLocation? arrival;
  @override
  final String? carrier;
  @override
  final String? seat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Travel(departure: $departure, arrival: $arrival, carrier: $carrier, seat: $seat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Travel'))
      ..add(DiagnosticsProperty('departure', departure))
      ..add(DiagnosticsProperty('arrival', arrival))
      ..add(DiagnosticsProperty('carrier', carrier))
      ..add(DiagnosticsProperty('seat', seat));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelImpl &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.carrier, carrier) || other.carrier == carrier) &&
            (identical(other.seat, seat) || other.seat == seat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, departure, arrival, carrier, seat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      __$$TravelImplCopyWithImpl<_$TravelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelImplToJson(
      this,
    );
  }
}

abstract class _Travel implements Travel {
  const factory _Travel(
      {final TravelLocation? departure,
      final TravelLocation? arrival,
      final String? carrier,
      final String? seat}) = _$TravelImpl;

  factory _Travel.fromJson(Map<String, dynamic> json) = _$TravelImpl.fromJson;

  @override
  TravelLocation? get departure;
  @override
  TravelLocation? get arrival;
  @override
  String? get carrier;
  @override
  String? get seat;
  @override
  @JsonKey(ignore: true)
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelLocation _$TravelLocationFromJson(Map<String, dynamic> json) {
  return _TravelLocation.fromJson(json);
}

/// @nodoc
mixin _$TravelLocation {
  String? get location => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelLocationCopyWith<TravelLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelLocationCopyWith<$Res> {
  factory $TravelLocationCopyWith(
          TravelLocation value, $Res Function(TravelLocation) then) =
      _$TravelLocationCopyWithImpl<$Res, TravelLocation>;
  @useResult
  $Res call({String? location, String? date, String? time});
}

/// @nodoc
class _$TravelLocationCopyWithImpl<$Res, $Val extends TravelLocation>
    implements $TravelLocationCopyWith<$Res> {
  _$TravelLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelLocationImplCopyWith<$Res>
    implements $TravelLocationCopyWith<$Res> {
  factory _$$TravelLocationImplCopyWith(_$TravelLocationImpl value,
          $Res Function(_$TravelLocationImpl) then) =
      __$$TravelLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? location, String? date, String? time});
}

/// @nodoc
class __$$TravelLocationImplCopyWithImpl<$Res>
    extends _$TravelLocationCopyWithImpl<$Res, _$TravelLocationImpl>
    implements _$$TravelLocationImplCopyWith<$Res> {
  __$$TravelLocationImplCopyWithImpl(
      _$TravelLocationImpl _value, $Res Function(_$TravelLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_$TravelLocationImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelLocationImpl
    with DiagnosticableTreeMixin
    implements _TravelLocation {
  const _$TravelLocationImpl({this.location, this.date, this.time});

  factory _$TravelLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelLocationImplFromJson(json);

  @override
  final String? location;
  @override
  final String? date;
  @override
  final String? time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelLocation(location: $location, date: $date, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelLocation'))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelLocationImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, date, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelLocationImplCopyWith<_$TravelLocationImpl> get copyWith =>
      __$$TravelLocationImplCopyWithImpl<_$TravelLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelLocationImplToJson(
      this,
    );
  }
}

abstract class _TravelLocation implements TravelLocation {
  const factory _TravelLocation(
      {final String? location,
      final String? date,
      final String? time}) = _$TravelLocationImpl;

  factory _TravelLocation.fromJson(Map<String, dynamic> json) =
      _$TravelLocationImpl.fromJson;

  @override
  String? get location;
  @override
  String? get date;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$TravelLocationImplCopyWith<_$TravelLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get name => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get unitPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({String? name, int? quantity, double? unitPrice});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? quantity, double? unitPrice});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
  }) {
    return _then(_$ProductImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl with DiagnosticableTreeMixin implements _Product {
  const _$ProductImpl({this.name, this.quantity, this.unitPrice});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String? name;
  @override
  final int? quantity;
  @override
  final double? unitPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(name: $name, quantity: $quantity, unitPrice: $unitPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('unitPrice', unitPrice));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity, unitPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String? name,
      final int? quantity,
      final double? unitPrice}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String? get name;
  @override
  int? get quantity;
  @override
  double? get unitPrice;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Accommodation _$AccommodationFromJson(Map<String, dynamic> json) {
  return _Accommodation.fromJson(json);
}

/// @nodoc
mixin _$Accommodation {
  String? get hotelName => throw _privateConstructorUsedError;
  String? get roomType => throw _privateConstructorUsedError;
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccommodationCopyWith<Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationCopyWith<$Res> {
  factory $AccommodationCopyWith(
          Accommodation value, $Res Function(Accommodation) then) =
      _$AccommodationCopyWithImpl<$Res, Accommodation>;
  @useResult
  $Res call(
      {String? hotelName, String? roomType, String? checkIn, String? checkOut});
}

/// @nodoc
class _$AccommodationCopyWithImpl<$Res, $Val extends Accommodation>
    implements $AccommodationCopyWith<$Res> {
  _$AccommodationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelName = freezed,
    Object? roomType = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_value.copyWith(
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationImplCopyWith<$Res>
    implements $AccommodationCopyWith<$Res> {
  factory _$$AccommodationImplCopyWith(
          _$AccommodationImpl value, $Res Function(_$AccommodationImpl) then) =
      __$$AccommodationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hotelName, String? roomType, String? checkIn, String? checkOut});
}

/// @nodoc
class __$$AccommodationImplCopyWithImpl<$Res>
    extends _$AccommodationCopyWithImpl<$Res, _$AccommodationImpl>
    implements _$$AccommodationImplCopyWith<$Res> {
  __$$AccommodationImplCopyWithImpl(
      _$AccommodationImpl _value, $Res Function(_$AccommodationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelName = freezed,
    Object? roomType = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_$AccommodationImpl(
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccommodationImpl
    with DiagnosticableTreeMixin
    implements _Accommodation {
  const _$AccommodationImpl(
      {this.hotelName, this.roomType, this.checkIn, this.checkOut});

  factory _$AccommodationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccommodationImplFromJson(json);

  @override
  final String? hotelName;
  @override
  final String? roomType;
  @override
  final String? checkIn;
  @override
  final String? checkOut;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Accommodation(hotelName: $hotelName, roomType: $roomType, checkIn: $checkIn, checkOut: $checkOut)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Accommodation'))
      ..add(DiagnosticsProperty('hotelName', hotelName))
      ..add(DiagnosticsProperty('roomType', roomType))
      ..add(DiagnosticsProperty('checkIn', checkIn))
      ..add(DiagnosticsProperty('checkOut', checkOut));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationImpl &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.roomType, roomType) ||
                other.roomType == roomType) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hotelName, roomType, checkIn, checkOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationImplCopyWith<_$AccommodationImpl> get copyWith =>
      __$$AccommodationImplCopyWithImpl<_$AccommodationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccommodationImplToJson(
      this,
    );
  }
}

abstract class _Accommodation implements Accommodation {
  const factory _Accommodation(
      {final String? hotelName,
      final String? roomType,
      final String? checkIn,
      final String? checkOut}) = _$AccommodationImpl;

  factory _Accommodation.fromJson(Map<String, dynamic> json) =
      _$AccommodationImpl.fromJson;

[Desensitization, reference only]
}
