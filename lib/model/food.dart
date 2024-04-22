/// food item
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addons> availableAddons;

  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.availableAddons});
}

/// food categories
enum FoodCategory {
  burgers,
  salades,
  sides,
  deserts,
  drinks,
}

/// food addons
class Addons {
  String name;
  double addons;

  Addons({required this.name, required this.addons});
}
