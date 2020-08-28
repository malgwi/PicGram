import 'package:flutter/material.dart';

Widget buildImageGrid(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      top: 25.0,
      left: 15.0,
      right: 15.0,
    ),
    child: Container(
      height: 225.0,
      child: Row(
        children: [
          Container(
            height: 225.0,
            width: MediaQuery.of(context).size.width / 2 + 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
              image: DecorationImage(
                image: AssetImage('images/beach1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 2.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 111.5,
                width: MediaQuery.of(context).size.width / 2 - 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/beach2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 2.0),
              Container(
                height: 111.5,
                width: MediaQuery.of(context).size.width / 2 - 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/beach3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
