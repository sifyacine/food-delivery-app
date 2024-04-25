import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({Key? key, required this.child, required this.title}) : super(key: key);

  final Widget child;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      expandedHeight: 340,
      collapsedHeight: 120,
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      floating: false,
      pinned: true,
      actions: [
        IconButton(onPressed: () {
          /// go to cart page
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
        }, icon: const Icon(Icons.shopping_cart))
      ],
      title: const Text("Sunset Dinner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,

      ),
    );
  }
}
