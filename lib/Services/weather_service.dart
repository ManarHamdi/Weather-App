import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/WeatherResponceModel.dart';

class WeatherService {
  static Future<WeatherResponceModel> getWeather (String cityName)async{
    String baseUrl="http://api.weatherapi.com/v1";
    http.Response responce=await http.get(Uri.parse(
        "$baseUrl/forecast.json?key=234ad9f7e92b4877826171225231508&q=$cityName&days=1"
     ));
     var json=jsonDecode(responce.body);
     print("weather responce is $json");
     var weatherResponce=WeatherResponceModel.fromJson(json);
     return weatherResponce;

  }
}