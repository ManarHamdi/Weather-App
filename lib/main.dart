import 'package:flutter/material.dart';
import 'package:weather_app/Provider/weather_provider.dart';
import 'package:weather_app/Screens/home_screen.dart';
import 'package:weather_app/Screens/search_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return ChangeNotifierProvider(
    create: (_)=>WeatherProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
      },
    ),
  );

  }

}