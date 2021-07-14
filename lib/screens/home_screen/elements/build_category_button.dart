import 'package:flutter/material.dart';

buildIconButtonsMid(BuildContext context, String name, IconData icon, Widget widget) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => widget)),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 3,
                  color: Colors.purple.shade200,
                )
              ],
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