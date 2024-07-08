import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mock data for demonstration
    List<CartItem> cartItems = [
      CartItem(name: 'Fried Rice', price: 10.0, quantity: 2),
      CartItem(name: 'Gulab jamun', price: 12.0, quantity: 1),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(cartItems[index].name),
            subtitle: Text('${cartItems[index].quantity} x \$${cartItems[index].price}'),
            trailing: Text('\$${cartItems[index].totalPrice()}'),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total: \$${_calculateTotal(cartItems)}',
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                onPressed: () {
                  // Place order logic
                  _placeOrder(context, cartItems);
                },
                child: Text('Place Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateTotal(List<CartItem> cartItems) {
    double total = 0.0;
    for (var item in cartItems) {
      total += item.totalPrice();
    }
    return total;
  }

  void _placeOrder(BuildContext context, List<CartItem> cartItems) {
    // Implement order placement logic (e.g., send order to backend, navigate to order confirmation screen)
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order Placed'),
          content: Text('Your order has been successfully placed.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
              },
            ),
          ],
        );
      },
    );
  }
}

class CartItem {
  final String name;
  final double price;
  final int quantity;

  CartItem({required this.name, required this.price, required this.quantity});

  double totalPrice() {
    return price * quantity;
  }
}
