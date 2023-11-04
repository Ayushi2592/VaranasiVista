import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:varanasi_vista/screens/activities_screen.dart';
import 'package:varanasi_vista/screens/hotels_screen.dart';
import 'package:varanasi_vista/screens/restaurants_screen.dart';
import 'package:varanasi_vista/screens/transportation.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_outlined),
          ),
        ],
        backgroundColor: Color(0xFF13005A),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 250,
              aspectRatio: 10 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Image.network(""),
              Image.network(""),
              Image.network(""),
            ],
          ),
          Container(
            child: Text(
              'Find your Opportunity',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView(
              children: [
                buildCategoryItem(
                  context,
                  'Hackathons',
                  '',
                      () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ActivitiesScreen()));
                  },
                ),
                buildCategoryItem(
                  context,
                  'Scholarships',
                  '',
                      () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HotelsScreen()));
                  },
                ),
                buildCategoryItem(
                  context,
                  'Internships',
                  '',
                      () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantsScreen()));
                  },
                ),
                buildCategoryItem(
                  context,
                  'Open Source',
                  '',
                      () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TransportationScreen()));
                  },
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryItem(BuildContext context, String title, String imageUrl, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.pacifico(
              fontSize: 25,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
