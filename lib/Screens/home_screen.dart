import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Provider/weather_provider.dart';
import 'package:weather_app/Screens/search_screen.dart';
import 'package:weather_app/models/WeatherResponceModel.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
WeatherResponceModel? weatherData;
  @override
  Widget build(BuildContext context) {
 weatherData=Provider.of <WeatherProvider> (context).weatherData;
    return Scaffold(appBar: AppBar(
      title: const Text("Weather"),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SearchScreen();
          }));
        }, icon:const Icon(Icons.search) )
      ],
    )
      ,
    body:
    weatherData==null ? Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
        Text("There is no weather 😔 start",style: TextStyle(fontSize: 25)),
        Text("searching now🔍",style: TextStyle(fontSize: 25),)
      ]),
    ) : Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin:Alignment.topCenter,
            end: Alignment.bottomCenter
            ,colors: [
          weatherData!.getThemeColor(),
          weatherData!.getThemeColor()[400]!,
          weatherData!.getThemeColor()[300]!,


        ])
      ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 3,),
          Text(weatherData!.location?.name??"",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          Text("${weatherData!.location?.localtime??""}", style: TextStyle(fontSize: 21),)
              ,Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    // getWeatherImage(weatherData!.forecast?.forecastday?[0]?.day?.condition?.text??"")
                    Provider.of<WeatherProvider>(context).weatherData!.getWeatherImage()
                    ,
                    Spacer(),
                    Text("${weatherData!.forecast?.forecastday![0].day?.avgtempC?.toInt().toString()??""}",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold),),
                    Spacer(),
                    Column(children: [
                      Text("min temp:${weatherData!.forecast?.forecastday?[0].day?.mintempC?.toInt().toString()??""}"),
                      Text("max temp:${weatherData!.forecast?.forecastday?[0].day?.maxtempC?.toInt().toString()??""}")
                    ],)
                  ],
                ),
              ),
              SizedBox(height: 20)
              ,Text("${weatherData!.forecast?.forecastday?[0].day?.condition?.text??""}",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              Spacer(flex: 7,)
        ]),
      ),

    ),
    );
  }
}
