part of 'cart_bloc_bloc.dart';

@immutable
abstract class CartBlocEvent {}

class CartInitialEvent extends CartBlocEvent{

}
 class CartRemoveEvent extends CartBlocEvent{
  final ProductDataModel productDataModel;

  CartRemoveEvent({required this.productDataModel});
 }


