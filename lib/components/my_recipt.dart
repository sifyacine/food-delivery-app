import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyRecipt extends StatelessWidget {
  const MyRecipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25, right: 25, bottom: 25, top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Thank You for your order!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(25),
                child: Consumer<Restaurant>(builder: (context, restaurant, child) => Text(restaurant.displayCartReceipt()),),
              ),
              const SizedBox(height: 25,),
              const Text("Estimated delivery time is 4:10 pm")
            ],
          ),
        ),

    );
  }
}
