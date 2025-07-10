import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:bondly/features/bonds/domain/usecases/get_bonds.dart';
import 'bonds_state.dart';

@injectable
class BondsCubit extends Cubit<BondsState> {
  final GetBonds getBonds;

  BondsCubit(this.getBonds) : super(BondsInitial());

  Future<void> fetchBonds() async {
    emit(BondsLoading());
    try {
      final bonds = await getBonds();
      emit(BondsLoaded(bonds));
    } catch (e) {
      emit(BondsError('Failed to load bonds: ${e.toString()}'));
    }
  }
}
