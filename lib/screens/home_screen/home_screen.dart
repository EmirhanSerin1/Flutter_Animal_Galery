import 'package:flutter/material.dart';
import 'package:flutter_animal_gallery/screens/random_animals_big/big_animal_photo.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/cats.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/dogs.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/horses.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/lions.dart';

import '../categories_screen/categories.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                color: Color(0xFFF8F4F4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTopText(),
                      buildBanner(context),
                      SizedBox(height: 48),
                      buildIconButtonsMid(context, "Categories", Icons.menu, Categories()),
                      SizedBox(height: 40),
                      Center(
                          child: Text(
                        "Random Animals",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0C0F20),
                        ),
                      )),
                      SizedBox(height: 16),
                      buildRandomAnimalsPart(context)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildRandomAnimalsPart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRandomAnimals(context, "assets/images/animals/cats/cat1.jpg", CatsGallery()),
              SizedBox(width: 8),
              buildRandomAnimals(context, "assets/images/animals/horses/horse1.jpg", HorsesGallery()),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRandomAnimals(context, "assets/images/animals/dogs/dog1.jpg", DogsGallery()),
              SizedBox(width: 8),
              buildRandomAnimals(context, "assets/images/animals/lions/lion1.jpg", LionsGallery())
            ],
          )
        ],
      ),
    );
  }

  buildIconButtonsMid(BuildContext context, String name, IconData icon, Widget widget) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => widget)),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Color(0xFFEBF3FA),
            ),
            child: Icon(
              icon,
              color: Color(0xEE96356A),
            ),
          ),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontSize: 16, color: Color(0xEE96356A), fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  buildTopText() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Text("Home", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF0C0F20))),
    );
  }

  buildBanner(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 4 / 7,
            height: 120,
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
            decoration: BoxDecoration(
              color: Color(0xFFB510B5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Animal Photos",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage("assets/images/animals/wolfs/wolf1.jpg"), fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }

  buildRandomAnimals(BuildContext context, String imageUrl, Widget widget) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> RandomAnimalsBig(imageUrl, widget))),
          child: Hero(
        tag: imageUrl,
            child: Container(
          width: MediaQuery.of(context).size.width / 2.29,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
