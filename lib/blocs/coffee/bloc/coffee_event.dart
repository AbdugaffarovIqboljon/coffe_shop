part of 'coffee_bloc.dart';

@immutable
sealed class CoffeeEvent extends Equatable {
  const CoffeeEvent();
  @override
  List<Object?> get props => [];
}

class GetInitial extends CoffeeEvent {}

class GetTradicional extends CoffeeEvent {}

class GetDoce extends CoffeeEvent {}

class GetEspecias extends CoffeeEvent {}
