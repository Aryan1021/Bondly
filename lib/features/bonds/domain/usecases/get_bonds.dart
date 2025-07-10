import 'package:injectable/injectable.dart';

import '../entities/bond.dart';
import '../repository/bond_repository.dart';

@injectable
class GetBonds {
  final BondRepository repository;

  GetBonds(this.repository);

  Future<List<Bond>> call() async => await repository.getBonds();
}
