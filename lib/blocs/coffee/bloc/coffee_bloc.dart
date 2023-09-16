import 'package:bloc/bloc.dart';
import 'package:coffee_shop_app_with_bloc/models/coffee_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'coffee_event.dart';
part 'coffee_state.dart';

class CoffeeBloc extends Bloc<CoffeeEvent, CoffeeState> {
  CoffeeBloc() : super(const CoffeeInitial(index: 1, initial: [], list: [])) {
    on<GetInitial>(_getInitial);
    on<GetTradicional>(_getTradicional);
    on<GetDoce>(_getDoce);
    on<GetEspecias>(_getEspecial);
  }

  void _getInitial(GetInitial event, Emitter emit) {
    emit(CoffeeLoading(
        index: state.index, initial: state.initial, list: state.list));
    emit(CoffeeInitial(
        index: 1,
        initial: [tradicionais.first, doce.first, especial.first],
        list: tradicionais));
  }

  void _getTradicional(GetTradicional event, Emitter emit) {
    emit(CoffeeLoading(
        index: state.index, initial: state.initial, list: state.list));
    emit(CoffeeTradicionalSuccess(
        index: 1, initial: state.initial, list: tradicionais));
  }

  void _getDoce(GetDoce event, Emitter emit) {
    emit(CoffeeLoading(
        index: state.index, initial: state.initial, list: state.list));
    emit(
        CoffeeTradicionalSuccess(index: 2, initial: state.initial, list: doce));
  }

  void _getEspecial(GetEspecias event, Emitter emit) {
    emit(CoffeeLoading(
        index: state.index, initial: state.initial, list: state.list));
    emit(CoffeeTradicionalSuccess(
        index: 3, initial: state.initial, list: especial));
  }
}
