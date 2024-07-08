import 'package:flutter/material.dart';
import 'package:myapp/screens/restaurent.dart';

class Hotels extends StatelessWidget {
  final List<Restaurant> restaurants = [
    Restaurant(name: 'Anjaneya Restaurent', imageUrl: 'https://ui.cltpstatic.com/places/hotels/cms/3967/3967589/images/image_3967589_c4942c31-a536-44ac-ab48-405e22f13ad2_w.jpeg'),
    Restaurant(name: 'Hotel Kosala', imageUrl: 'https://cdn.pixabay.com/photo/2024/01/25/12/54/building-8531835_1280.jpg'),
    Restaurant(name: 'Hotel Manorama', imageUrl: 'https://www.blackridgeresearch.com/uploads/what-is-green-building-and-what-is-the-role-of-green-building-council.webp'),
     Restaurant(name: 'Lemon Tree', imageUrl: 'https://pix10.agoda.net/hotelImages/10901644/-1/b44373db1f034bc4a2a02b95273ce3b9.jpg?ca=9&ce=1&s=702x392'),
      Restaurant(name: 'Hotel Paradise', imageUrl: 'https://q-xx.bstatic.com/xdata/images/hotel/840x460/389674869.jpg?k=843f7d3c07e4e2874b4923946337d7a190705f3008feb734400e24bd5da9ab63&o='),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        // Ensure ListView.builder has constraints for scrolling
        height: MediaQuery.of(context).size.height, // Example: full height of the screen
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(), // Ensure the list is always scrollable
          itemCount: restaurants.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to restaurant menu screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RestaurantMenuScreen(restaurant: restaurants[index]),
                  ),
                );
              },
              child: Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          restaurants[index].imageUrl,
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        restaurants[index].name,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
