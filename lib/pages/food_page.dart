import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_button.dart';
import 'package:fooddeliveryapp/model/restaurant.dart';
import 'package:provider/provider.dart';

import '../model/food.dart';

class FoodPage extends StatefulWidget {
  FoodPage({super.key, required this.food}) {
    for (Addons addons in food.availableAddons) {
      selectAddons[addons] = false;
    }
  }

  final Food food;
  final Map<Addons, bool> selectAddons = {};

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  /// method to add to cart
  void addToCart(Food food, Map<Addons, bool> selectedAddons){

    /// close the current food page to go back to menu
    Navigator.pop(context);

    /// format the selected addons
    List<Addons> currentlySelectedAddons = [];
    for(Addons addons in widget.food.availableAddons){
      if (widget.selectAddons[addons] == true){
        currentlySelectedAddons.add(addons);
      }
    }

    /// add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                /// food image
                Image.asset(widget.food.imagePath),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      /// food price
                      Text(
                        "\$ ${widget.food.price}",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 10),

                      /// food description
                      Text(widget.food.description),
                      const SizedBox(height: 20),

                      Divider(color: Theme.of(context).colorScheme.secondary),

                      const SizedBox(height: 20),

                      /// food add ons
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),

                      /// addons
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            /// get individual addons
                            Addons addons = widget.food.availableAddons[index];

                            /// return check box UI
                            return CheckboxListTile(
                              title: Text(addons.name),
                              subtitle: Text("\$ ${addons.price}"),
                              value: widget.selectAddons[addons],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectAddons[addons] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                /// button => add to cart
                MyButton(
                  text: 'Add to cart',
                  onTab: () => addToCart(widget.food, widget.selectAddons),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),

        /// back button
        SafeArea(
          child: Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Container(

                decoration: BoxDecoration(
                  color:  Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
