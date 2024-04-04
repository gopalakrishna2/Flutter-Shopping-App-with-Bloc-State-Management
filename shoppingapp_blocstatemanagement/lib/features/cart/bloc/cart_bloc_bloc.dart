import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoppingapp_blocstatemanagement/data/cart_items.dart';
import 'package:shoppingapp_blocstatemanagement/features/home/models/home_product_data.dart';

part 'cart_bloc_event.dart';
part 'cart_bloc_state.dart';

class CartBlocBloc extends Bloc<CartBlocEvent, CartBlocState> {
  CartBlocBloc() : super(CartBlocInitial()) {
    on<CartInitialEvent>(cartInitialEvent);

    on<CartRemoveEvent>(cartRemoveEvent);
  
  
  }

  FutureOr<void> cartInitialEvent(CartInitialEvent event, Emitter<CartBlocState> emit) {
    emit(CartSucsessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveEvent(CartRemoveEvent event, Emitter<CartBlocState> emit) {
    cartItems.remove(event.productDataModel);
    emit(CartSucsessState(cartItems: cartItems));
  }

}
