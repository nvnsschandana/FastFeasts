import 'package:flutter/material.dart';
import 'package:myapp/screens/orders.dart';
import 'package:myapp/screens/cart.dart';
import 'package:myapp/screens/hotel.dart';

import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/bottomnavbar.dart';
import 'package:myapp/widgets/bottomtab.dart';
import 'package:myapp/widgets/profile.dart';
import 'package:myapp/screens/hi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static List<Widget> _wigetsOptions = <Widget>[
    hi(),
    OrdersScreen(),
    CartScreen(),
    Hotels(),
  ];

int _selectedIndex = 0;

void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}

void _showLoginBottomSheet(BuildContext context){
  showModalBottomSheet(context: context,
      builder: (context){
    return LoginBottomSheet();
      });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
      child:MyappBar( 
        title: 'FastFeasts',
        scaffoldKey: _scaffoldKey,
        onNotificationTap: (){},
        onLoginTap: ()=> _showLoginBottomSheet(context),
      ),
      ),
      drawer: SideBar(),

     body:_wigetsOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex : _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
