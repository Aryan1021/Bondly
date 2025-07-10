import 'package:equatable/equatable.dart';
import 'package:bondly/features/bonds/domain/entities/bond.dart';

abstract class BondDetailState extends Equatable {
  const BondDetailState();

  @override
  List<Object?> get props => [];
}

class BondDetailInitial extends BondDetailState {}

class BondDetailLoading extends BondDetailState {}

class BondDetailLoaded extends BondDetailState {
  final Bond bond;

  const BondDetailLoaded(this.bond);

  @override
  List<Object?> get props => [bond];
}

class BondDetailError extends BondDetailState {
  final String message;

  const BondDetailError(this.message);

  @override
  List<Object?> get props => [message];
}
