part of 'wishlist_bloc_bloc.dart';

@immutable
abstract class WishlistBlocState {}

abstract class WishlistActionState extends WishlistBlocState {}

final class WishlistBlocInitial extends WishlistBlocState {}

class WishlistSucsessState extends WishlistBlocState{
  final List<ProductDataModel> wishlistItems;
  WishlistSucsessState({required this.wishlistItems});

}

