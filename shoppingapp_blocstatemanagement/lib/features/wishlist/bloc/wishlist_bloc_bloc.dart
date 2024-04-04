import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoppingapp_blocstatemanagement/data/wishlist_items.dart';
import 'package:shoppingapp_blocstatemanagement/features/home/models/home_product_data.dart';

part 'wishlist_bloc_event.dart';
part 'wishlist_bloc_state.dart';

class WishlistBlocBloc extends Bloc<WishlistBlocEvent, WishlistBlocState> {
  WishlistBlocBloc() : super(WishlistBlocInitial()) {
    on<WishlistInitialEvent>(wishlistInitialEvent);

    on<WishlistRemoveEvent>(wishlistRemoveEvent);
  
  
  }

  FutureOr<void> wishlistInitialEvent(WishlistInitialEvent event, Emitter<WishlistBlocState> emit) {
    emit(WishlistSucsessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistRemoveEvent(WishlistRemoveEvent event, Emitter<WishlistBlocState> emit) {
    wishlistItems.remove(event.productDataModel);
    emit(WishlistSucsessState(wishlistItems: wishlistItems));
  }

}