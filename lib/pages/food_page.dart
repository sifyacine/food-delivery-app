import 'package:flutter/material.dart';

import '../model/food.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key, required this.food}) : super(key: key);

  final Food food;

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// food image
            Image.asset(widget.food.imagePath),

            /// food name
            Text(widget.food.name),

            /// food description
            Text(widget.food.description),

            /// addons
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.food.availableAddons.length,
              itemBuilder: (context, index) {
                /// get individual addons
                Addons addons = widget.food.availableAddons[index];

                /// return check box UI
                return CheckboxListTile(
                      title: Text(addons.name),
                      subtitle: Text(addons.price.toString()),
                      value: false,
                      onChanged: (value) {},
                    );
              },
            ),

            /// button => add to cart
          ],
        ),
      ),
    );
  }
}
