part of 'cart_bloc.dart';

sealed class CartState extends Equatable {
  final List<CartItem> items;
  const CartState({required this.items});

  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {
  const CartInitial({required super.items});
}

class CartLoading extends CartState {
  const CartLoading({required super.items});
}

class CartItemRemoved extends CartState {
  const CartItemRemoved({required super.items});
}

class CartItemAdded extends CartState {
  const CartItemAdded({required super.items});
}

class CartItemCountIncrement extends CartState {
  const CartItemCountIncrement({required super.items});
}

class CartItemCountDecrement extends CartState {
  const CartItemCountDecrement({required super.items});
}
