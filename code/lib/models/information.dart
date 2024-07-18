// information.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'information.freezed.dart';
part 'information.g.dart';

@freezed
class Information with _$Information {
  const factory Information({
[Desensitization, reference only]
}

@freezed
class Location with _$Location {
  const factory Location({
    String? name,
    String? address,
    Coordinates? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    double? latitude,
    double? longitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@freezed
class Person with _$Person {
  const factory Person({
    required String name,
    String? role,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

@freezed
class Identifiers with _$Identifiers {
  const factory Identifiers({
    String? orderNumber,
    String? bookingReference,
    String? ticketNumber,
  }) = _Identifiers;

  factory Identifiers.fromJson(Map<String, dynamic> json) =>
      _$IdentifiersFromJson(json);
}

@freezed
class Financial with _$Financial {
  const factory Financial({
    double? totalAmount,
    String? currency,
    String? paymentMethod,
  }) = _Financial;

  factory Financial.fromJson(Map<String, dynamic> json) =>
      _$FinancialFromJson(json);
}

@freezed
class Travel with _$Travel {
  const factory Travel({
    TravelLocation? departure,
    TravelLocation? arrival,
    String? carrier,
    String? seat,
  }) = _Travel;

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);
}

[Desensitization, reference only]

  factory Accommodation.fromJson(Map<String, dynamic> json) =>
      _$AccommodationFromJson(json);
}
