import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key, required this.tabController}) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: const [
          /// first tab
          Tab(icon: Icon(Icons.home)),

          /// second tab
          Tab(icon: Icon(Icons.settings)),

          /// third  tab
          Tab(icon: Icon(Icons.person)),

        ],
      ),
    );
  }
}
