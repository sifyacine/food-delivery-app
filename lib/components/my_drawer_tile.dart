import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  const MyDrawerTile(
      {Key? key, required this.text, this.icon, required this.onTab})
      : super(key: key);

  final String text;
  final IconData? icon;
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      onTap: onTab,
    );
  }
}
