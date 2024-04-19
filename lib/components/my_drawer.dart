import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_drawer_tile.dart';
import 'package:fooddeliveryapp/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          /// app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          /// home ist tile
          MyDrawerTile(
            text: "H O M E",
            onTab: () => Navigator.pop(context),
            icon: Icons.home,
          ),

          /// settings list tile
          MyDrawerTile(
            text: "S E T T I N G S",
            onTab: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()));
            },
            icon: Icons.settings,
          ),

          const Spacer(),

          /// logout list tile
          MyDrawerTile(
            text: "L O G O U T",
            onTab: () {},
            icon: Icons.logout,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
