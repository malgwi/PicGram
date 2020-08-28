import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildInfoDetail() {
  return Padding(
    padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'ABUJA - 12 Days',
              style: GoogleFonts.montserrat(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 7.0),
            Row(
              children: <Widget>[
                Text(
                  'Sunday Malgwi',
                  style: GoogleFonts.montserrat(
                    fontSize: 11.0,
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(width: 4.0),
                Icon(
                  Icons.timer,
                  size: 4.0,
                  color: Colors.black,
                ),
                SizedBox(width: 4.0),
                Text('3 Videos',
                    style: GoogleFonts.montserrat(
                      fontSize: 11.0,
                      color: Colors.grey.shade500,
                    ))
              ],
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 7.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 20.0,
                width: 20.0,
                child: Image.asset(
                  'images/navarrow.png',
                ),
              ),
            ),
            SizedBox(width: 7.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 20.0,
                width: 20.0,
                child: Image.asset(
                  'images/chatbubble.png',
                ),
              ),
            ),
            SizedBox(width: 7.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 22.0,
                width: 22.0,
                child: Image.asset(
                  'images/fav.png',
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
