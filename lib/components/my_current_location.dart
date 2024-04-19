import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({Key? key}) : super(key: key);

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Your location'),
              content: const TextField(
                decoration: InputDecoration(hintText: 'Search address..'),
              ),
              actions: [
                /// cancel button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('cancel'),
                ),

                /// save button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('save'),
                ),

              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver now',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                /// address
                Text(
                  '6901 Hollywood Bly',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),

                /// drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
