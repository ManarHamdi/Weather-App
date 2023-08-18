import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Provider/weather_provider.dart';
import 'package:weather_app/Services/weather_service.dart';
import 'package:weather_app/models/WeatherResponceModel.dart';

class SearchScreen extends StatelessWidget{
  static String routeName="search screen";
  String? cityName;

  @override
  Widget build(BuildContext context) {
    WeatherResponceModel? weatherData=Provider.of <WeatherProvider> (context).weatherData;

    return Scaffold(
      appBar: AppBar(
      title: const Text("Search a City"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          TextField(
            onSubmitted:(data) async{
              cityName=data;
                WeatherResponceModel?  weather= await WeatherService.getWeather(cityName!);
                weatherData=Provider.of<WeatherProvider>(context,listen: false).setWeatherData(weather);
              print(weatherData?.location?.name);

              Navigator.pop(context);



            } ,
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Enter a City",
                border: OutlineInputBorder(),
                label: Text("search"),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xffffad3c),width: 3 )),
                contentPadding: EdgeInsets.symmetric(vertical: 32,horizontal: 32),

            ),
            textAlign: TextAlign.start,
            enabled: true,
          ),
        ]),
      ),
      );

}}

