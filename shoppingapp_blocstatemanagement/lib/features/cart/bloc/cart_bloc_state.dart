part of 'cart_bloc_bloc.dart';

@immutable
abstract class CartBlocState {}

abstract class CartActionState extends CartBlocState {}

final class CartBlocInitial extends CartBlocState {}

class CartSucsessState extends CartBlocState{
  final List<ProductDataModel> cartItems;
  CartSucsessState({required this.cartItems});

}
