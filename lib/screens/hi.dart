import 'package:flutter/material.dart';
import 'package:myapp/screens/Textfile.dart';

class hi extends StatefulWidget {
  const hi({super.key});

  @override
  State<hi> createState() => _hiState();
}

class _hiState extends State<hi> {
  void _navigateToDetailPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder:(context)=>Data(),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recipes'),
        ),
        body: ImageScrollNetwork(),
      ),
    );
  }
}

class ImageScrollNetwork extends StatelessWidget {
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?cs=srgb&dl=pexels-marvin-ozz-1297854-2474661.jpg&fm=jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcLLFCOjSc9TLICJ9myaFU0LPwM3diEelCHg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeDKPtCBFlZyNxA07XFVguH8jzhmkSsjgqUg&s',
    'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcHg1OTg1MjAtaW1hZ2Uta3d2eG04dnYuanBn.jpg',
    'https://thumbs.dreamstime.com/b/south-indian-food-platter-idli-sambhar-vada-dosa-chutneys-144914344.jpg',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Handle onTap event here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Data()),
            );
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrls[index],
                    width: 400.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    ' Read More', // Replace with your text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
