import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:shoppingapp_blocstatemanagement/features/wishlist/bloc/wishlist_bloc_bloc.dart";
import "package:shoppingapp_blocstatemanagement/features/wishlist/ui/wishlist_tile.dart";

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBlocBloc wishlistBloc = WishlistBlocBloc();
  @override
  void initState() {
    wishlistBloc.add(WishlistInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Wishlist Items')),
        body: BlocConsumer<WishlistBlocBloc, WishlistBlocState>(
          bloc: wishlistBloc,
          listener: (context, state) {},
          listenWhen: (previous, current) => current is WishlistActionState,
          buildWhen: (previous, current) => current is! WishlistActionState,
          builder: (context, state) {
            switch (state.runtimeType) {
              case WishlistSucsessState:
                final successState = state as WishlistSucsessState;
                return ListView.builder(
                    itemCount: successState.wishlistItems.length,
                    itemBuilder: (context, index) {
                      return WishlistTileWidget(
                          wishlistBloc: wishlistBloc,
                          productDataModel: successState.wishlistItems[index]);
                    });
            }
            return Container();
          },
        ));
  }
}