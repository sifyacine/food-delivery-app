import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_button.dart';
import 'package:fooddeliveryapp/components/my_cart_tile.dart';
import 'package:fooddeliveryapp/model/restaurant.dart';
import 'package:fooddeliveryapp/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      /// cart
      final userCart = restaurant.cart;

      /// scaffold UI
      return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            /// clear cart button
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                            "Are you sure you want to clear the cart?",
                          ),
                          actions: [
                            /// cancel button
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancel')),

                            /// yes button
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  restaurant.clearCart();
                                },
                                child: const Text('yes')),
                          ],
                        ));
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(
          children: [
            userCart.isEmpty
                ? const Expanded(
                    child: Center(child: Text('No item in the cart')))
                : Expanded(
                    child: ListView.builder(
                      itemCount: userCart.length, // Add this line
                      itemBuilder: (context, index) {
                        /// get individual cart item
                        final cartItem = userCart[index];

                        /// return cart tile ui
                        return MyCartTile(cartItem: cartItem);
                      },
                    ),
                  ),


            /// check out button
            MyButton(text: 'Checkout', onTab: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage())),),

            /// size
            const SizedBox(height: 25,),
          ],
        ),
      );
    });
  }
}
