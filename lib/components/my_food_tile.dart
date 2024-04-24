import 'package:flutter/material.dart';

import '../model/food.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({Key? key, required this.food, required this.onTab})
      : super(key: key);

  final Food food;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTab,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                /// text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        "\$ ${food.price}",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),

                /// food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(
                      food.imagePath,
                    ),
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ),

        /// divider
        Divider(
          color: Theme.of(context).colorScheme.primary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
