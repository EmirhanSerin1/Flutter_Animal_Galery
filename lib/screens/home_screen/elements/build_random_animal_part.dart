import 'package:flutter/material.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/cats.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/dogs.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/horses.dart';
import 'package:flutter_animal_gallery/screens/selected_categories_screen/lions.dart';

import 'build_random_animal.dart';

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