import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
// List of food menu
  final List<Food> _menu = [
// burgers
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 150,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 25),
        Addon(name: "Bacon", price: 50),
        Addon(name: "Avocado", price: 50),
      ],
    ),
    Food(
      name: "Bacon Burger",
      description: "A classic beef burger topped with crispy bacon, cheddar cheese, lettuce, and tomato.",
      imagePath: "lib/images/burgers/aloha_burger.jpg",
      price: 175,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra bacon", price: 25),
        Addon(name: "Fried egg", price: 25),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A delicious veggie patty with lettuce, tomato, cucumber, and a dollop of special sauce.",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 120,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled mushrooms", price: 80),
        Addon(name: "Avocado", price: 50),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description: "Beef patty with BBQ sauce, crispy onion rings, lettuce, and cheddar cheese.",
      imagePath: "lib/images/burgers/bbq_burger.jpg",
      price: 200,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ sauce", price: 25),
        Addon(name: "Jalapenos", price: 50),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description: "Grilled chicken breast with lettuce, tomato, and a special mayo sauce.",
      imagePath: "lib/images/burgers/bluemoon_burger.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra chicken", price: 100),
        Addon(name: "Pineapple", price: 25),
      ],
    ),

// salads
    Food(
      name: "Caesar Salad",
      description: "Crisp romaine lettuce with Caesar dressing, croutons, and Parmesan cheese.",
      imagePath: "lib/images/salads/caesar_salad.jpg",
      price: 110,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 95),
        Addon(name: "Bacon bits", price: 50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "A mix of cucumbers, tomatoes, olives, feta cheese, and red onions with a Greek dressing.",
      imagePath: "lib/images/salads/greek_salad.jpg",
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra feta", price: 25),
        Addon(name: "Grilled shrimp", price: 50),
      ],
    ),
    Food(
      name: "Garden Salad",
      description: "Fresh mixed greens with cherry tomatoes, cucumbers, carrots, and a vinaigrette dressing.",
      imagePath: "lib/images/salads/asiansesame_salad.jpg",
      price: 120,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Boiled egg", price: 50),
        Addon(name: "Avocado slices", price: 50),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description: "A hearty salad with chicken, bacon, avocado, blue cheese, and a hard-boiled egg.",
      imagePath: "lib/images/salads/quinoa_salad.jpg",
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 25),
        Addon(name: "Grilled steak", price: 50),
      ],
    ),
    Food(
      name: "Spinach Salad",
      description: "Fresh spinach leaves with goat cheese, walnuts, cranberries, and a balsamic vinaigrette.",
      imagePath: "lib/images/salads/southwest_salad.jpg",
      price: 150,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 75),
        Addon(name: "Extra goat cheese", price: 50),
      ],
    ),

// sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries with a side of ketchup.",
      imagePath: "lib/images/sides/loaded_fries_side.jpg",
      price: 160,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 50),
        Addon(name: "Bacon bits", price: 50),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy onion rings served with a tangy dipping sauce.",
      imagePath: "lib/images/sides/onion_rings_side.jpg",
      price: 120,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch dip", price: 25),
        Addon(name: "BBQ sauce", price: 25),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Breaded mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/sides/mac_side.jpg",
      price: 135,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara", price: 50),
        Addon(name: "Ranch dip", price: 30),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a side of honey mustard.",
      imagePath: "lib/images/sides/sweet_potato_side.jpg",
      price: 95,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy mayo", price: 25),
        Addon(name: "Cheese sauce", price: 25),
      ],
    ),
    Food(
      name: "Coleslaw",
      description: "Creamy coleslaw with a touch of sweetness.",
      imagePath: "lib/images/sides/garlic_bread_side.jpg",
      price: 110,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra coleslaw", price: 20),
        Addon(name: "Pickles", price: 15),
      ],
    ),

// deserts
    Food(
      name: "Chocolate Cake",
      description: "Rich and moist chocolate cake with a creamy chocolate frosting.",
      imagePath: "lib/images/deserts/cup_cake_desert.jpg",
      price: 250,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Extra frosting", price: 50),
        Addon(name: "Vanilla ice cream", price: 75),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with a graham cracker crust.",
      imagePath: "lib/images/deserts/doug_desert.jpg",
      price: 200,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Strawberry topping", price: 75),
        Addon(name: "Whipped cream", price: 50),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Classic apple pie with a flaky crust and spiced apple filling.",
      imagePath: "lib/images/deserts/mob_desert.jpg",
      price: 120,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 25),
        Addon(name: "Caramel drizzle", price: 50),
      ],
    ),
    Food(
      name: "Brownie",
      description: "Rich chocolate brownie with a fudgy center.",
      imagePath: "lib/images/deserts/pastries_desert.jpg",
      price: 150,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Walnuts", price: 75),
        Addon(name: "Chocolate chips", price: 50),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream topped with chocolate sauce, nuts, and a cherry.",
      imagePath: "lib/images/deserts/ice_cream_desert.jpg",
      price: 150,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 25),
        Addon(name: "Extra nuts", price: 50),
      ],
    ),
    // drinks
    Food(
      name: "Cocktail",
      description: "A refreshing mix of spirits, fruit juices, and other ingredients, garnished with a slice of lemon.",
      imagePath: "lib/images/drinks/cocktail_drinks.jpeg",
      price: 125,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra shot", price: 50),
        Addon(name: "Fruit garnish", price: 25),
      ],
    ),
    Food(
      name: "Cold Coffee",
      description: "A chilled coffee drink made with milk, sugar, and a hint of vanilla.",
      imagePath: "lib/images/drinks/cold_coffee_drinks.jpeg",
      price: 90,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped cream", price: 50),
        Addon(name: "Caramel syrup", price: 25),
      ],
    ),
    Food(
      name: "Lemon Juice",
      description: "Freshly squeezed lemon juice with a touch of sugar and mint.",
      imagePath: "lib/images/drinks/lemon_juice_drinks.jpeg",
      price: 60,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint leaves", price: 20),
        Addon(name: "Ice cubes", price: 30),
      ],
    ),
    Food(
      name: "Orange Juice",
      description: "Freshly squeezed orange juice, full of vitamin C and perfect for any time of day.",
      imagePath: "lib/images/drinks/orange_juice_drinks.jpeg",
      price: 65,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice cubes", price: 30),
        Addon(name: "Pulp", price: 15),
      ],
    ),
    Food(
      name: "Strawberry Shakes",
      description: "A creamy and delicious strawberry shake made with fresh strawberries and milk.",
      imagePath: "lib/images/drinks/strawberry_shakes_drinks.jpeg",
      price: 90,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped cream", price: 40),
        Addon(name: "Chocolate chips", price: 20),
      ],
    ),
  ];

  // user chat

  final List<CartItem> _cart = [];

  // delivery address (which user can change/ update)
  String _deliveryAddress = '34 Rajeev Nagar Patna';

  /*
  G E T T E R S
  */

  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;


  /*
  O P E R A T I O N S
  */



  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same

      bool isSameFood = item.food == food;


      // check if the list of selected addons are the same

      bool isSameAddons =
      ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
            food: food,
            selectedAddons: selectedAddons
        ),
      );
    }
    notifyListeners();
  }


  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }
      else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;


      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }


  /*
  H E L P E R S
  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(
        DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} * ${cartItem.food.name} - ${_formatPrice(
              cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Prices: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivery to: $deliveryAddress");

    return receipt.toString();
  }

// format double value into money
  String _formatPrice(double price) {
    return "₹${price.toStringAsFixed(2)}";
  }

// format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }

}
