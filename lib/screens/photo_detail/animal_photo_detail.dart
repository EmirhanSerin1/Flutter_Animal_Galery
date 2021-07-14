import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimalPhotoDetail extends StatelessWidget {
  var imagePath;

  AnimalPhotoDetail(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: imagePath,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(this.imagePath), fit: BoxFit.cover),
            ),
          )),
    );
  }
}
