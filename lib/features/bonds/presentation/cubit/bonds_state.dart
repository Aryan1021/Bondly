import 'package:equatable/equatable.dart';
import '../../domain/entities/bond.dart';

abstract class BondsState extends Equatable {
  const BondsState();

  @override
  List<Object?> get props => [];
}

class BondsInitial extends BondsState {}

class BondsLoading extends BondsState {}

class BondsLoaded extends BondsState {
  final List<Bond> bonds;

  const BondsLoaded(this.bonds);

  @override
  List<Object?> get props => [bonds];
}

class BondsError extends BondsState {
  final String message;

  const BondsError(this.message);

  @override
  List<Object?> get props => [message];
}
