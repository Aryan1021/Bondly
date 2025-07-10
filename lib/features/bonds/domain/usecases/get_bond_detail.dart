import 'package:injectable/injectable.dart';

import '../entities/bond.dart';
import '../repository/bond_repository.dart';

@injectable
class GetBondDetail {
  final BondRepository repository;

  GetBondDetail(this.repository);

  Future<Bond> call(String isin) async {
    return await repository.getBondDetail(isin);
  }
}
