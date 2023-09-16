import 'package:bloc/bloc.dart';
import 'package:coffee_shop_app_with_bloc/models/models.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartInitial(items: [])) {
    on<ItemAddedEvent>(_onItemAdded);
    on<ItemRemovedEvent>(_onItemRemoved);
    on<ItemCountDecrement>(_onItemCountDecrement);
    on<ItemCountIncrement>(_onItemCountIncrement);
  }

  void _onItemAdded(ItemAddedEvent event, Emitter emit) {
    final oldItems = state.items;
    emit(CartLoading(items: state.items));
    if (oldItems.contains(event.item)) {
      final newItems = oldItems.map((item) {
        if (item == event.item) {
          return item.copyWith(quantity: item.quantity + event.item.quantity);
        }
        return item;
      }).toList();
      emit(CartItemAdded(items: newItems));
      return;
    }
    final newList = [...oldItems, event.item];
    emit(CartItemAdded(items: newList));
  }

  void _onItemRemoved(ItemRemovedEvent event, Emitter emit) {
    emit(CartLoading(items: state.items));
    final items = [...state.items];
    items.remove(event.item);
    emit(CartItemRemoved(items: items));
  }

  void _onItemCountIncrement(ItemCountIncrement event, Emitter emit) {
    emit(CartLoading(items: state.items));
    final newItems = state.items.map((item) {
      if (item == event.item) {
        return item.copyWith(quantity: item.quantity + 1);
      }
      return item;
    }).toList();
    emit(CartItemCountIncrement(items: newItems));
  }

  void _onItemCountDecrement(ItemCountDecrement event, Emitter emit) {
    emit(CartLoading(items: state.items));
    final newItems = state.items.map((item) {
      if (item == event.item) {
        return item.copyWith(quantity: item.quantity - 1);
      }
      return item;
    }).toList();
    emit(CartItemCountIncrement(items: newItems));
  }
}
