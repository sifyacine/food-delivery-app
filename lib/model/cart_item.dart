
import "food.dart";

class CartItem {
  Food food;
  List<Addons> selectAddons;
  int quantity;

  CartItem(
      {required this.selectAddons, required this.food, this.quantity = 1});

  double get totalPrice {
    double addonsPrice =
        selectAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
