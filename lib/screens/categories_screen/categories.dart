import 'package:flutter/material.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/bears.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/cats.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/dogs.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/horses.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/lions.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/tigers.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/wolfs.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF0C0F20),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              buildCategories("Cats", context: context, navigator: CatsGallery()),
              buildCategories("Dogs", context: context, navigator: DogsGallery()),
              buildCategories("Tigers", context: context, navigator: TigersGallery()),
              buildCategories("Bears", context: context, navigator: BearsGallery()),
              buildCategories("Wolfs", context: context, navigator: WolfsGallery()),
              buildCategories("Lions", context: context, navigator: LionsGallery()),
              buildCategories("Horses", context: context, navigator: HorsesGallery()),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildCategories(String name, {Widget navigator, BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (contect)=> navigator)),
              child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 3,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
          child: Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
