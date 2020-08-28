import 'package:flutter/material.dart';

Widget buildImages() {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
    child: Container(
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage('images/beach2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
