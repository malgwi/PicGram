import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/components/gallery_details.dart';
import 'package:travel_app/components/image_grid.dart';
import 'package:travel_app/screens/profile.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'home';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.home, color: Colors.black)),
            new Tab(icon: Icon(Icons.search, color: Colors.grey)),
            new Tab(icon: Icon(Icons.graphic_eq, color: Colors.grey)),
            new Tab(icon: Icon(Icons.add_circle_outline, color: Colors.grey)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'TravelGuide',
                  style: GoogleFonts.montserrat(
                    fontSize: 20.0,
                    color: Colors.grey.shade900,
                  ),
                ),
                SizedBox(width: 150.0),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                  color: Colors.grey.shade500,
                  iconSize: 30.0,
                ),
                SizedBox(width: 5.0),
                InkWell(
                  child: Hero(
                    tag: 'images/person.jpg',
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: AssetImage('images/person.jpg'),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new ProfilePage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade100,
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.navigation),
                    color: Colors.blue,
                    iconSize: 50.0,
                    onPressed: () {},
                  ),
                  SizedBox(width: 5.0),
                  Padding(
                    padding: EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abuja Crush Rocks',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          'Add an Update',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 120.0),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                    iconSize: 30.0,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FROM THE COMMUNITY',
                  style: GoogleFonts.montserrat(
                      color: Colors.grey, fontSize: 15.0),
                ),
                Text(
                  'View All',
                  style: GoogleFonts.montserrat(
                      color: Colors.blue, fontSize: 15.0),
                )
              ],
            ),
          ),
          buildImageGrid(context),
          imageGalleryDetail(),
          buildImageGrid(context),
          imageGalleryDetail()
        ],
      ),
    );
  }
}
