import '../../domain/entities/bond.dart';
import '../../domain/repository/bond_repository.dart';
import '../datasources/bonds_remote_datasource.dart';

class BondRepositoryImpl implements BondRepository {
  final BondsRemoteDatasource remoteDatasource;

  BondRepositoryImpl(this.remoteDatasource);

  @override
  Future<List<Bond>> getBonds() async {
    final models = await remoteDatasource.getBonds();
    return models
        .map((model) => Bond(
      isin: model.isin,
      issuerName: model.issuerName,
      creditRating: model.creditRating,
      logoUrl: model.logoUrl,
      status: model.status,
      description: model.description,
    ))
        .toList();
  }

  @override
  Future<Bond> getBondDetail(String isin) async {
    final model = await remoteDatasource.getBondDetail(isin);
    return Bond(
      isin: model.isin,
      issuerName: model.issuerName,
      creditRating: model.creditRating,
      logoUrl: model.logoUrl,
      status: model.status,
      description: model.description,
    );
  }
}
