part of 'coffee_bloc.dart';

@immutable
sealed class CoffeeState extends Equatable {
  final List<CoffeeModel> list;
  final List<CoffeeModel> initial;
  final int index;

  const CoffeeState(
      {required this.index, required this.initial, required this.list});
  @override
  List<Object?> get props => [list, initial];
}

class CoffeeInitial extends CoffeeState {
  const CoffeeInitial(
      {required super.index, required super.initial, required super.list});
}

class CoffeeLoading extends CoffeeState {
  const CoffeeLoading(
      {required super.index, required super.initial, required super.list});
}

class CoffeeTradicionalSuccess extends CoffeeState {
  const CoffeeTradicionalSuccess(
      {required super.index, required super.initial, required super.list});
}

class CoffeeDoceSuccess extends CoffeeState {
  const CoffeeDoceSuccess(
      {required super.index, required super.initial, required super.list});
}

class CoffeeEspecialSuccess extends CoffeeState {
  const CoffeeEspecialSuccess(
      {required super.index, required super.initial, required super.list});
}

class CoffeeFailure extends CoffeeState {
  const CoffeeFailure(
      {required super.index, required super.initial, required super.list});
}
