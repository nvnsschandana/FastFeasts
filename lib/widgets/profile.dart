import 'package:flutter/material.dart';
import 'package:myapp/screens/account.dart';
import 'package:myapp/screens/contact.dart';
import 'package:myapp/screens/about.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('N.chandana'),
            accountEmail: Text('user@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdni.iconscout.com/illustration/premium/thumb/female-profile-8187681-6590623.png?f=webp'),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey, // Background color for the header
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.person_3_rounded,
                color: Colors.blueGrey,
              ),
              title: Text('My Profile'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyAccounts()));
            },
          ),
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.blueGrey,
              ),
              title: Text('About'),
            ),
            onTap: () {
              
              Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.blueGrey,
              ),
              title: Text('Contact Us'),
            ),
            onTap: () {
           
              Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
        ],
      ),
    );
  }
}
