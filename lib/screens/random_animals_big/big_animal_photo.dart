import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RandomAnimalsBig extends StatefulWidget {
  var imagePath;
  var widget;

  RandomAnimalsBig(this.imagePath, this.widget);

  @override
  _RandomAnimalsBigState createState() => _RandomAnimalsBigState();
}

class _RandomAnimalsBigState extends State<RandomAnimalsBig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imagePath,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => widget.widget)),
                    child: Center(
                        child: Text(
                      "Tap For More",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
