import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Screens/home_screen.dart';
import 'package:weather_app/models/WeatherResponceModel.dart';

class WeatherProvider extends ChangeNotifier{
  WeatherResponceModel? weatherData;

@override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}