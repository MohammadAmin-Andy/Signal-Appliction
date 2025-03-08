import 'package:flutter/material.dart';

Widget postWidget(String imagesName, String title) {
  return Column(
    spacing: 5,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image(image: AssetImage('assets/images/$imagesName.png')),
      ),
      SizedBox(height: 10),
      Text(
        '$title: Buy Signal | 8 March',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            spacing: 3,
            children: [
              Text('Buy on: 14,423', style: TextStyle(color: Colors.green)),
              Icon(Icons.sell, color: Colors.green, size: 15),
            ],
          ),
          Row(
            spacing: 3,
            children: [
              Text('sell on: 12,523', style: TextStyle(color: Colors.red)),
              Icon(Icons.price_check, color: Colors.red, size: 18),
            ],
          ),
        ],
      ),
      SizedBox(width: 200, child: Divider(color: Colors.black, thickness: 1)),
      SizedBox(height: 20),
    ],
  );
}
