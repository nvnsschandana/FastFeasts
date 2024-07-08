import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        body: Padding(
          padding: EdgeInsets.all(16.0), // Adjust padding as needed
          child: SingleChildScrollView(
            child: Text(
              "Rasgulla is one of three traditional Odia chhena desserts. Due to rasgulla becoming associated with Bengali cuisine, the Odisha Milk Federation has tried to popularise chhena poda as the signature Odia dessert.\n\n"
              "Sambar is a South Indian stew made with lentils, mixed vegetables, tamarind, herbs, spices & a special aromatic spice powder known as sambar powder. This spice powder is the key to make a good sambar. A variety of spices & lentils are used to make this powder.\n\n"
              "Gulab jamun is a sweet confectionary or dessert, originating in the Indian subcontinent and a type of mithai popular in India, Pakistan, Nepal, the Maldives and Bangladesh, as well as Myanmar.\n\n"
              "Punugulu is a deep-fried snack made with rice, urad dal and other spices. They are often served with peanut chutney, known as palli chutney, coconut chutney, tomato chutney, verusanaga chutney or toordal chutney known as Kandhi Pachadi, or they can be served with capsicum peanut chutney.\n\n"
              "A dosa is a thin, savoury crepe in South Indian cuisine made from a fermented batter of ground white gram and rice. Dosas are served hot, often with chutney and sambar. Dosas are popular in South Asia as well as around the world.\n\n"
              "A samosa is a fried South Asian pastry with a savoury filling, mostly vegetables, spiced potatoes, onions, peas, also non-vegetarian meat, or fish. It is made into different shapes, including triangular, cone, or crescent, depending on the region.\n\n"
              "Tomato chutney is a type of chutney, originating from the Indian subcontinent, prepared using tomatoes as the primary ingredient",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

