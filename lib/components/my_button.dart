import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, this.onTab, required this.text}) : super(key: key);

  final void Function()? onTab;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(text, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),),
        ),
      ),
    );
  }
}
