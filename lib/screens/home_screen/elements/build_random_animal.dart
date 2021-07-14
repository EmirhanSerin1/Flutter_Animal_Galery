import 'package:flutter/material.dart';
import 'package:flutter_animal_gallery/screens/random_animals_big/big_animal_photo.dart';

buildRandomAnimals(BuildContext context, String imageUrl, Widget widget) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Color(0xFFB510B5).withOpacity(0.35),
            offset: Offset(0, 0),
          )
        ],
      ),
      padding: EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RandomAnimalsBig(imageUrl, widget))),
        child: Hero(
          tag: imageUrl,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 240,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.purple.shade200,
                  offset: Offset(3, 3),
                )
              ],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }