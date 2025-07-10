import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_model.freezed.dart';
part 'bond_model.g.dart';

@freezed
class BondModel with _$BondModel {
  const factory BondModel({
    required String id,
    required String isin,
    required String issuerName,
    required String creditRating,
    required String logoUrl,
    required String status,
  }) = _BondModel;

  factory BondModel.fromJson(Map<String, dynamic> json) => _$BondModelFromJson(json);
}
