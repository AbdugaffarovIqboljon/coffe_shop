part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  final CartItem item;
  const CartEvent({required this.item});

  @override
  List<Object> get props => [];
}

class ItemAddedEvent extends CartEvent {
  const ItemAddedEvent({required super.item});
}

class ItemRemovedEvent extends CartEvent {
  const ItemRemovedEvent({required super.item});
}

class ItemCountIncrement extends CartEvent {
  const ItemCountIncrement({required super.item});
}

class ItemCountDecrement extends CartEvent {
  const ItemCountDecrement({required super.item});
}
