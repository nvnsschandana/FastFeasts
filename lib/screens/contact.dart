import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

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
              "\n\nAddress: 123 Main Street, Cityville, State, 12345\n\n"
               "Phone: +1 (555) 123-4567\n\n"
               "Follow Us:\n\n"
"Facebook: facebook.com/yourbusiness\n\n"
"Instagram: instagram.com/yourbusiness\n\n"
"Twitter: twitter.com/yourbusiness"
              "Email: info@yourbusiness.com",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

