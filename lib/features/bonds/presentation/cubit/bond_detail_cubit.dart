import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:bondly/features/bonds/domain/repository/bond_repository.dart';
import 'bond_detail_state.dart';

@injectable
class BondDetailCubit extends Cubit<BondDetailState> {
  final BondRepository repository;

  BondDetailCubit(this.repository) : super(BondDetailInitial());

  Future<void> fetchBondDetail(String isin) async {
    emit(BondDetailLoading());
    try {
      final bond = await repository.getBondDetail(isin);
      emit(BondDetailLoaded(bond));
    } catch (e) {
      emit(BondDetailError('Failed to load bond detail: ${e.toString()}'));
    }
  }
}
