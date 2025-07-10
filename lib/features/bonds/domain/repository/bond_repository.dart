import '../entities/bond.dart';

abstract class BondRepository {
  Future<List<Bond>> getBonds();
  Future<Bond> getBondDetail(String isin);
}
