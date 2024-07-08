import 'package:flutter/material.dart';

class MyAccounts extends StatelessWidget {
  const MyAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(16.0), // Adjust padding as needed
          child: SingleChildScrollView(
            child: Text(
              "\n\n"
              "Name:N.Chandana\n\n"
              "MailId:user@gmail.com\n\n"
              "Date of birth:00-00-0000\n\n"
              "Address:Vijayawada\n\n"
              "MobileNo.9087654321",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}