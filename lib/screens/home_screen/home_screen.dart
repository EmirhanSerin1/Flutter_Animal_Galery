import 'package:flutter/material.dart';

import '../categories_screen/categories.dart';
import 'elements/build_banner.dart';
import 'elements/build_category_button.dart';
import 'elements/build_random_animal_part.dart';

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

  

  

  buildTopText() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Text("Home", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF0C0F20))),
    );
  }

  

  
}
