// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

[Desensitization, reference only]
_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      name: json['name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
    };

_$AccommodationImpl _$$AccommodationImplFromJson(Map<String, dynamic> json) =>
    _$AccommodationImpl(
      hotelName: json['hotelName'] as String?,
      roomType: json['roomType'] as String?,
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
    );

Map<String, dynamic> _$$AccommodationImplToJson(_$AccommodationImpl instance) =>
    <String, dynamic>{
      'hotelName': instance.hotelName,
      'roomType': instance.roomType,
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
    };
