/*

Name : Sanyam
RollNo : 21CSU234
You are implementing a shopping cart feature for an e-commerce application. Design a class
ShoppingCart to manage the items added by users. Implement methods to add items to the cart,
remove items, calculate the total price, and apply discounts based on the quantity and type of items
using Dart data types such as lists, sets, and maps.

*/

abstract class ShoppingCart {
  void addItems(String item, int quantity);
  void removeItems(String item, int quantity);
  void calculateTotalPrice();
  void applyDiscounts();
}

class ShoppingCartImpl implements ShoppingCart {
  Map<String, int> items = {};

  @override
  void addItems(String item, int quantity) {
    if (items.containsKey(item)) {
      items[item] = items[item]! + quantity;
    } else {
      items[item] = quantity;
    }
  }

  @override
  void removeItems(String item, int quantity) {
    if (items.containsKey(item)) {
      print('Item removed: $item');
      if (items[item]! > quantity) {
        items[item] = items[item]! - quantity;
      } else {
        items.remove(item);
      }
    }
  }

  @override
  void calculateTotalPrice() {
    double totalPrice = 0;
    items.forEach((key, value) {
      totalPrice += value;
    });
    print('Total Price: $totalPrice');
  }

  @override
  void applyDiscounts() {
    items.forEach((item, quantity) {
      if (quantity > 2) {
        double discount = 0.05;
        double discountedPrice = quantity * 10 * (1 - discount);
        items[item] = discountedPrice.toInt();
        print('Discount applied for $item: $discountedPrice');
      }
    });
  }
}

void main() {
  ShoppingCartImpl cart = ShoppingCartImpl();
  cart.addItems('item1', 5);
  cart.addItems('item2', 3);
  cart.addItems('item3', 2);
  cart.calculateTotalPrice();
  cart.applyDiscounts();
  cart.removeItems('item1', 2);
  cart.calculateTotalPrice();
}
