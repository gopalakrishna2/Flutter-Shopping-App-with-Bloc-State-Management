import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:shoppingapp_blocstatemanagement/features/cart/bloc/cart_bloc_bloc.dart";
import "package:shoppingapp_blocstatemanagement/features/cart/ui/cartTile.dart";

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final CartBlocBloc cartBloc = CartBlocBloc();
  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Cart Item')),
        body: BlocConsumer<CartBlocBloc, CartBlocState>(
          bloc: cartBloc,
          listener: (context, state) {},
          listenWhen: (previous, current) => current is CartActionState,
          buildWhen: (previous, current) => current is !CartActionState,
          builder: (context, state) {
            switch (state.runtimeType){
              case CartSucsessState:
              final successState = state as CartSucsessState;
              return  ListView.builder(
                    itemCount: successState.cartItems.length,
                    itemBuilder: (context, index) {
                      return CartTileWidget(
                          cartBloc: cartBloc,
                          productDataModel: successState.cartItems[index]);
                    });

            }
            return Container();
          },
        ));
  }
}
