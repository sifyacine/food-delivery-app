import 'food.dart';

class Restaurant {
  /// list of food menu
  final List<Food> _menu = [
    Food(
      name: "Classic cheese burger",
      description:
          "a juicy beef party with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "image path",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 0.99 ),
        Addons(name: 'Bacon', price: 1.49 ),
        Addons(name: 'Avocado', price: 1.99 ),
      ],
    ),

    Food(
      name: "BBQ Bacon Burger",
      description:
      "A smoky, grilled beef patty topped with crispy bacon, BBQ sauce, and a tangy pickle.",
      imagePath: "image path",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Extra Bacon', price: 1.49 ),
        Addons(name: 'Cheese', price: 0.99 ),
        Addons(name: 'Onion Rings', price: 1.99 ),
      ],
    ),

    Food(
      name: "Veggie Delight Burger",
      description:
      "A delicious veggie patty with fresh lettuce, tomato, cucumber, and a hint of mayo.",
      imagePath: "image path",
      price: 0.89,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 0.99 ),
        Addons(name: 'Avocado', price: 1.99 ),
        Addons(name: 'Grilled Mushrooms', price: 1.49 ),
      ],
    ),

    Food(
      name: "Spicy Chicken Burger",
      description:
      "A spicy chicken patty with jalapenos, pepper jack cheese, and a spicy mayo.",
      imagePath: "image path",
      price: 1.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Extra Spicy Mayo', price: 0.49 ),
        Addons(name: 'Bacon', price: 1.49 ),
        Addons(name: 'Avocado', price: 1.99 ),
      ],
    ),

    Food(
      name: "Double Decker Burger",
      description:
      "Two juicy beef patties with double cheese, lettuce, tomato, and a special sauce.",
      imagePath: "image path",
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 0.99 ),
        Addons(name: 'Bacon', price: 1.49 ),
        Addons(name: 'Fried Egg', price: 1.99 ),
      ],
    ),

    /// drinks
    Food(
      name: "Classic Lemonade",
      description:
      "A refreshing blend of fresh lemons, sugar, and water.",
      imagePath: "image path",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Extra Sugar', price: 0.49 ),
        Addons(name: 'Mint', price: 0.69 ),
        Addons(name: 'Strawberry Flavor', price: 0.99 ),
      ],
    ),

    Food(
      name: "Iced Coffee",
      description:
      "A chilled, brewed coffee served over ice. Perfect for a hot day.",
      imagePath: "image path",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Extra Shot of Espresso', price: 0.99 ),
        Addons(name: 'Vanilla Syrup', price: 0.69 ),
        Addons(name: 'Almond Milk', price: 0.49 ),
      ],
    ),

    Food(
      name: "Green Tea",
      description:
      "A hot, soothing cup of green tea known for its health benefits.",
      imagePath: "image path",
      price: 0.89,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Honey', price: 0.49 ),
        Addons(name: 'Lemon', price: 0.49 ),
        Addons(name: 'Ginger', price: 0.69 ),
      ],
    ),

    Food(
      name: "Strawberry Smoothie",
      description:
      "A creamy smoothie made with fresh strawberries and yogurt.",
      imagePath: "image path",
      price: 1.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Protein Powder', price: 0.99 ),
        Addons(name: 'Chia Seeds', price: 0.69 ),
        Addons(name: 'Almond Milk', price: 0.49 ),
      ],
    ),

    Food(
      name: "Hot Chocolate",
      description:
      "A warm, comforting cup of hot chocolate made with rich cocoa.",
      imagePath: "image path",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Whipped Cream', price: 0.49 ),
        Addons(name: 'Marshmallows', price: 0.49 ),
        Addons(name: 'Peppermint Flavor', price: 0.69 ),
      ],
    ),
    /// salads
    Food(
      name: "Caesar Salad",
      description:
      "Crisp romaine lettuce tossed with creamy Caesar dressing, croutons, and Parmesan cheese.",
      imagePath: "image path",
      price: 1.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Grilled Chicken', price: 1.99 ),
        Addons(name: 'Bacon', price: 1.49 ),
        Addons(name: 'Avocado', price: 1.99 ),
      ],
    ),

    Food(
      name: "Greek Salad",
      description:
      "A mix of fresh cucumbers, tomatoes, Kalamata olives, and feta cheese with a light vinaigrette.",
      imagePath: "image path",
      price: 2.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Grilled Chicken', price: 1.99 ),
        Addons(name: 'Extra Feta Cheese', price: 0.99 ),
        Addons(name: 'Stuffed Grape Leaves', price: 1.49 ),
      ],
    ),

    Food(
      name: "Cobb Salad",
      description:
      "A hearty salad with grilled chicken, bacon, hard-boiled eggs, tomatoes, and blue cheese crumbles.",
      imagePath: "image path",
      price: 2.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Avocado', price: 1.99 ),
        Addons(name: 'Extra Blue Cheese', price: 0.99 ),
        Addons(name: 'Ranch Dressing', price: 0.49 ),
      ],
    ),

    Food(
      name: "Spinach Salad",
      description:
      "Fresh spinach leaves with strawberries, goat cheese, and a sweet poppy seed dressing.",
      imagePath: "image path",
      price: 2.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Grilled Chicken', price: 1.99 ),
        Addons(name: 'Candied Pecans', price: 1.49 ),
        Addons(name: 'Extra Goat Cheese', price: 0.99 ),
      ],
    ),

    Food(
      name: "Asian Chicken Salad",
      description:
      "Grilled chicken, mandarin oranges, and crunchy chow mein noodles on a bed of mixed greens with a sesame ginger dressing.",
      imagePath: "image path",
      price: 2.79,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Extra Chicken', price: 1.99 ),
        Addons(name: 'Avocado', price: 1.99 ),
        Addons(name: 'Extra Sesame Ginger Dressing', price: 0.49 ),
      ],
    ),

    /// side dishes
    Food(
      name: "French Fries",
      description:
      "Crispy golden fries, lightly salted and served hot.",
      imagePath: "image path",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Cheese', price: 0.49 ),
        Addons(name: 'Gravy', price: 0.69 ),
        Addons(name: 'Bacon Bits', price: 0.99 ),
      ],
    ),

    Food(
      name: "Coleslaw",
      description:
      "A tangy mix of shredded cabbage and carrots in a creamy dressing.",
      imagePath: "image path",
      price: 0.89,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Extra Dressing', price: 0.49 ),
        Addons(name: 'Bacon Bits', price: 0.99 ),
        Addons(name: 'Diced Pickles', price: 0.69 ),
      ],
    ),

    Food(
      name: "Garlic Bread",
      description:
      "Warm, toasted bread spread with garlic butter and sprinkled with parsley.",
      imagePath: "image path",
      price: 1.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Extra Garlic Butter', price: 0.49 ),
        Addons(name: 'Cheese', price: 0.99 ),
        Addons(name: 'Marinara Sauce', price: 0.69 ),
      ],
    ),

    Food(
      name: "Onion Rings",
      description:
      "Crispy, golden onion rings served with a tangy dipping sauce.",
      imagePath: "image path",
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Extra Sauce', price: 0.49 ),
        Addons(name: 'Cheese Sauce', price: 0.99 ),
        Addons(name: 'Spicy Ketchup', price: 0.69 ),
      ],
    ),

    Food(
      name: "Sweet Potato Fries",
      description:
      "Sweet and crispy sweet potato fries served with a honey mustard dip.",
      imagePath: "image path",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Extra Dip', price: 0.49 ),
        Addons(name: 'Cheese Sauce', price: 0.99 ),
        Addons(name: 'Bacon Bits', price: 0.99 ),
      ],
    ),

    /// desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
      "A rich chocolate cake with a gooey chocolate center, served warm.",
      imagePath: "image path",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: 'Vanilla Ice Cream', price: 0.99 ),
        Addons(name: 'Whipped Cream', price: 0.49 ),
        Addons(name: 'Strawberry Sauce', price: 0.69 ),
      ],
    ),

    Food(
      name: "Apple Pie",
      description:
      "A classic apple pie with a flaky crust and sweet apple filling, served with a scoop of vanilla ice cream.",
      imagePath: "image path",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: 'Extra Ice Cream', price: 0.99 ),
        Addons(name: 'Caramel Sauce', price: 0.69 ),
        Addons(name: 'Whipped Cream', price: 0.49 ),
      ],
    ),

    Food(
      name: "Cheesecake",
      description:
      "A creamy, rich cheesecake with a graham cracker crust and a hint of lemon.",
      imagePath: "image path",
      price: 2.79,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: 'Strawberry Topping', price: 0.99 ),
        Addons(name: 'Chocolate Sauce', price: 0.69 ),
        Addons(name: 'Whipped Cream', price: 0.49 ),
      ],
    ),

    Food(
      name: "Tiramisu",
      description:
      "A classic Italian dessert with layers of espresso-soaked ladyfingers and creamy mascarpone cheese, dusted with cocoa powder.",
      imagePath: "image path",
      price: 3.29,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: 'Extra Cocoa Powder', price: 0.49 ),
        Addons(name: 'Whipped Cream', price: 0.49 ),
        Addons(name: 'Chocolate Sauce', price: 0.69 ),
      ],
    ),

    Food(
      name: "Brownie Sundae",
      description:
      "A warm, fudgy brownie topped with vanilla ice cream, hot fudge, and a cherry on top.",
      imagePath: "image path",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: 'Extra Ice Cream', price: 0.99 ),
        Addons(name: 'Caramel Sauce', price: 0.69 ),
        Addons(name: 'Whipped Cream', price: 0.49 ),
      ],
    ),
  ];
}
