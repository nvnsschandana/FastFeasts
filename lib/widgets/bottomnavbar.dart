import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;


  const CustomBottomNavbar({
    required this.currentIndex,
    required this.onTap

});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,

      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: currentIndex == 0 ? Colors.black: Colors.black,

          ),label: 'Home'
        ),

        BottomNavigationBarItem(icon: Icon(Icons.category_sharp,
        color: currentIndex == 1 ? Colors.black: Colors.black,
        ),
        label: 'categories'
        ),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_sharp,
          color: currentIndex == 2 ? Colors.black: Colors.black,
        ),
            label: 'cart'
        ),
             BottomNavigationBarItem(icon: Icon(Icons.hotel_class_sharp,
          color: currentIndex == 2 ? Colors.black: Colors.black,
        ),
            label: 'hotels'
        ),
       
      ],
    );
  }
}