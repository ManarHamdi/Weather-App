import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/WeatherResponceModel.dart';

class WeatherService {
   static Future<WeatherResponceModel?> getWeather ( String cityName)async{
     WeatherResponceModel? weatherResponce;

     try
     {String baseUrl="http://api.weatherapi.com/v1";
    http.Response responce=await http.get(Uri.parse(
        "$baseUrl/forecast.json?key=234ad9f7e92b4877826171225231508&q=$cityName&days=1"
    ));
    var json=jsonDecode(responce.body);
    weatherResponce=WeatherResponceModel.fromJson(json);
    print("weather responce is $json");
}
catch(e){
       print(e);
        }

     return weatherResponce;

  }
}