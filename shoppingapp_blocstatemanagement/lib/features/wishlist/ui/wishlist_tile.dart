import 'package:flutter/material.dart';
import 'package:shoppingapp_blocstatemanagement/features/home/models/home_product_data.dart';
import 'package:shoppingapp_blocstatemanagement/features/wishlist/bloc/wishlist_bloc_bloc.dart';

class WishlistTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final WishlistBlocBloc wishlistBloc;
  const WishlistTileWidget({super.key, required this.productDataModel, required this.wishlistBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(productDataModel.imageurl),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(productDataModel.name,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(
            height: 10,
          ),
          Text(productDataModel.description,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${productDataModel.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
              Row(
                
                children: [
                  IconButton(
                    onPressed: () {
                      wishlistBloc.add(WishlistRemoveEvent(
                        productDataModel: productDataModel
                      ));
                    },
                    icon: const Icon(Icons.delete, color: Colors.red,),
                  ),
            
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
