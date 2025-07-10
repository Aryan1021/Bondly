import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/bond_model.dart';

abstract class BondsRemoteDatasource {
  Future<List<BondModel>> getBonds();
  Future<BondModel> getBondDetail(String isin);
}

@LazySingleton(as: BondsRemoteDatasource)
class BondsRemoteDatasourceImpl implements BondsRemoteDatasource {
  final Dio dio;

  BondsRemoteDatasourceImpl(this.dio);

  @override
  Future<List<BondModel>> getBonds() async {
    final response = await dio.get('https://eol122duf9sy4de.m.pipedream.net');
    final data = List<Map<String, dynamic>>.from(response.data);
    return data.map((json) => BondModel.fromJson(json)).toList();
  }

  @override
  Future<BondModel> getBondDetail(String isin) async {
    final response = await dio.get(
      'https://eo61q3zd4heiwke.m.pipedream.net',
      queryParameters: {'id': isin},
    );
    return BondModel.fromJson(response.data);
  }
}
