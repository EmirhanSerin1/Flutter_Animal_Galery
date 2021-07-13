
import 'package:flutter/material.dart';
import 'package:flutter_animal_gallery/core/constant/imagesUrl.dart';

class LionsGallery extends StatelessWidget {
  const LionsGallery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            color: Color(0xFFF8F4F4),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildOnePhoto(context, imageUrl[3], "1.jpg"),
                    buildOnePhoto(context, imageUrl[3], "2.jpg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildOnePhoto(context, imageUrl[3], "3.jpg"),
                    buildOnePhoto(context, imageUrl[3], "4.jpg"),
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

buildOnePhoto(BuildContext context, String imageUrl, String imageUrlSecondPart) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
    child: Container(
      width: MediaQuery.of(context).size.width / 2.2,
      height: 220,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl + imageUrlSecondPart),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Color(0xEE96356A).withOpacity(0.80),
              offset: Offset(0, 4),
            )
          ]),
    ),
  );
}
