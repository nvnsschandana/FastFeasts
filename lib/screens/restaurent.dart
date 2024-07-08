import 'package:flutter/material.dart';
class RestaurantMenuScreen extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantMenuScreen({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: ListView(
        children: <Widget>[
          _buildMenuItem('Fried Rice', 'Pure veg fried rice', 10.0),
          _buildMenuItem('GulabJamun', 'made of kova', 12.0),
          _buildMenuItem('Noodles', 'egg', 15.0),
           _buildMenuItem('smosa', 'aloo,sweetcorn,onion', 5.0),
            _buildMenuItem('Biryani', 'panner,dum,etc,', 20.0),
             _buildMenuItem('Curries', 'malai kofta,shahi panner etc', 25.0),
          // Add more items as needed
        ],
      ),
    );
  }

  Widget _buildMenuItem(String name, String description, double price) {
    return Container(
      color: Color.fromARGB(255, 84, 70, 70),
      child:Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ListTile(
        title: Text(name),
        subtitle: Text(description),
        trailing: Text('\$$price'),
        onTap: () {
          // Add item to cart or navigate to item details
        },
      ),
      )
    );
  }
}

class Restaurant {
  final String name;
  final String imageUrl;

  Restaurant({required this.name, required this.imageUrl});
}