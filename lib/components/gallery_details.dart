import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget imageGalleryDetail() {
  return Padding(
    padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
    child: Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Maui Summer',
              style: GoogleFonts.montserrat(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 7.0),
            Row(
              children: <Widget>[
                Text(
                  'Teresa Soto added 52 Photos',
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
                Text(
                  '2h ago',
                  style: GoogleFonts.montserrat(
                    fontSize: 11.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(width: 70.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 7.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 20.0,
                width: 20.0,
                child: Image.asset('images/navarrow.png'),
              ),
            ),
            SizedBox(width: 7.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 20.0,
                width: 20.0,
                child: Image.asset('images/chatbubble.png'),
              ),
            ),
            SizedBox(width: 7.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 22.0,
                width: 22.0,
                child: Image.asset('images/fav.png'),
              ),
            )
          ],
        )
      ],
    ),
  );
}
