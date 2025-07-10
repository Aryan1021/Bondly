import '../entities/bond.dart';
import '../repository/bond_repository.dart';

class GetBonds {
  final BondRepository repository;

  GetBonds(this.repository);

  Future<List<Bond>> call() async {
    return await repository.getBonds();
  }
}
