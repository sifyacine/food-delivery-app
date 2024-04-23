import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/model/food.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key, required this.tabController}) : super(key: key);

  final TabController tabController;

  List<Tab> _buildCategoryTabs(){
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
