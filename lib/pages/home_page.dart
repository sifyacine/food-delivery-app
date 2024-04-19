import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_current_location.dart';
import 'package:fooddeliveryapp/components/my_description_box.dart';
import 'package:fooddeliveryapp/components/my_drawer.dart';
import 'package:fooddeliveryapp/components/my_sliver-app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: const Text('text'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(indent: 25, endIndent: 25, color: Theme.of(context).colorScheme.secondary,),
                /// my current location
                MyCurrentLocation(),

                /// description box
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
