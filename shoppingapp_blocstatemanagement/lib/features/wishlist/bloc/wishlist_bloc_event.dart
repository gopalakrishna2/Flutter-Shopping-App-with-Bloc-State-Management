part of 'wishlist_bloc_bloc.dart';

@immutable
abstract class WishlistBlocEvent {}

class WishlistInitialEvent extends WishlistBlocEvent{

}
 class WishlistRemoveEvent extends WishlistBlocEvent{
  final ProductDataModel productDataModel;

  WishlistRemoveEvent({required this.productDataModel});
 }
