import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(16.0), // Adjust padding as needed
          child: SingleChildScrollView(
            child: Text("\n\nFounded in [2000], [FastFeasts] began as a small family-owned cafe with a passion for sharing our grandmother’s cherished recipes. Over the years, we’ve grown into a beloved community hub known for our commitment to quality and authenticity.\n\n"
            "4. Values and Philosophy Outline your core values and principles that guide your business practices. This helps customers align with your brand and understand what to expect\n\n"
            " we believe in sustainability, integrity, and innovation. We strive to minimize our environmental footprint by using eco-friendly packaging and supporting local farmers and producers\n\n"
          "Follow us on [www.youtube.com] to stay updated on our latest specials and culinary adventures!"
    
             , style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

