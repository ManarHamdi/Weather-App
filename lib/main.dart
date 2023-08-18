import 'package:flutter/material.dart';
import 'package:weather_app/Provider/weather_provider.dart';
import 'package:weather_app/Screens/home_screen.dart';
import 'package:weather_app/Screens/search_screen.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/WeatherResponceModel.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create:(context){
            return WeatherProvider();
          } ,
          child: WeatherApp()));
}

class WeatherApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
theme: ThemeData(primarySwatch: Provider.of<WeatherProvider>(context).weatherData?.getThemeColor()
),
    routes: {
    },
  );

  }

}