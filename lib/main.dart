import 'package:flutter/material.dart';
import 'package:varanasi_vista/screens/activities_screen.dart';
import 'package:varanasi_vista/screens/home_screen.dart';
import 'package:varanasi_vista/screens/hotels_screen.dart';
import 'package:varanasi_vista/screens/restaurants_screen.dart';
import 'package:varanasi_vista/screens/splashscreen.dart';
import 'package:varanasi_vista/screens/transportation.dart';

void main() => runApp(const MaterialApp());

class InfoGuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        HotelsScreen.id : (context) => HotelsScreen(),
        ActivityScreen.id : (context) => ActivityScreen(),
        RestaurantsScreen.id : (context) => RestaurantsScreen(),
        TransportationScreen.id : (context) => TransportationScreen(),

      },
    );
  }
}