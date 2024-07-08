import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final List<String> categories = [
    'Indian',
    'Chinese',
    'Italian',
    'Asian',
    'Desserts',
    'Drinks'
  ];

  final List<String> featuredItems = [
    'South Indian Thali',
    'North Indian Thali',
    'Salads',
    'Fruit Juices',
    'Tiffins'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none, // Remove underline
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(
                        categories[index],
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none, // Remove underline
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Featured Items',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none, // Remove underline
                ),
              ),
            ),
            Column(
              children: featuredItems.map((item) {
                return GestureDetector(
                  onTap: () {
                    // Handle onTap for the ListTile
                    // Example: navigate to item details screen
                    print('Tapped on $item');
                  },
                  child: ListTile(
                    title: Text(
                      item,
                      style: TextStyle(
                        decoration: TextDecoration.none, // Remove underline
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
