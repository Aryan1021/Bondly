// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BondModel _$BondModelFromJson(Map<String, dynamic> json) => _BondModel(
  id: json['id'] as String,
  isin: json['isin'] as String,
  issuerName: json['issuerName'] as String,
  creditRating: json['creditRating'] as String,
  logoUrl: json['logoUrl'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$BondModelToJson(_BondModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isin': instance.isin,
      'issuerName': instance.issuerName,
      'creditRating': instance.creditRating,
      'logoUrl': instance.logoUrl,
      'status': instance.status,
    };
