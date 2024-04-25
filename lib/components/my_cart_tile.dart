import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_quantity_selector.dart';
import 'package:fooddeliveryapp/model/cart_item.dart';
import 'package:fooddeliveryapp/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  const MyCartTile({Key? key, required this.cartItem}) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// food Image
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// food name
                      Text(cartItem.food.name),
                      const SizedBox(
                        height: 10,
                      ),

                      /// food price
                      Text("\$${cartItem.food.price}"),
                    ],
                  ),
                ),

                /// increment or decrement quantity
                Expanded(
                  child: MyQuantitySelector(
                      quantity: cartItem.quantity,
                      food: cartItem.food,
                      onDecrement: () {
                        restaurant.removeFromCart(cartItem);
                      },
                      onIncrement: () {
                        restaurant.addToCart(
                            cartItem.food, cartItem.selectAddons);
                      }),
                ),
              ],
            ),
            SizedBox(
              height: cartItem.selectAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectAddons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              /// addon name
                              Text(addon.name),
                              const SizedBox(width: 4,),
                              /// addon price
                              Text("\$ ${addon.price}", style: TextStyle(color: Theme.of(context).colorScheme.primary),),

                            ],
                          ),
                          shape: StadiumBorder(
                            side: BorderSide(color: Theme.of(context).colorScheme.primary)),
                          onSelected: (value) {},
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(), // Convert the Iterable to a List
              ),
            )
          ],
        ),
      ),
    );
  }
}
