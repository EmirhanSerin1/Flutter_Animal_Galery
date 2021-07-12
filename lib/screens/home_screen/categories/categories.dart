import 'package:flutter/material.dart';

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
              buildCategories("Cats"),
              buildCategories("Dogs"),
              buildCategories("Tigers"),
              buildCategories("Bears"),
              buildCategories("Wolfs"),
              buildCategories("Lions"),
              buildCategories("Horses"),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildCategories(String name, {Widget navigator, BuildContext contextq}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
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
    );
  }
}
