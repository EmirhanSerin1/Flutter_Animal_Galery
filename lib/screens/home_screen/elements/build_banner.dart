import 'package:flutter/material.dart';

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
            decoration: BoxDecoration(color: Color(0xFFB510B5), borderRadius: BorderRadius.circular(8), boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: Offset(3, 3),
                color: Colors.purple.shade200,
              )
            ]),
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