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
weatherData=Provider.of(context);

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
    body: weatherData==null ? Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
        Text("There is no weather 😔 start",style: TextStyle(fontSize: 25)),
        Text("searching now🔍",style: TextStyle(fontSize: 25),)
      ]),
    ) : Container(
      color: Colors.orange,
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 3,),
          Text(weatherData!.location!.name??"",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          Text("Updated at 12.11 pm", style: TextStyle(fontSize: 25),)
              ,Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Image.asset("assets/images/clear.png"),
                    Spacer(),
                    Text("30",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold),),
                    Spacer(),
                    Column(children: [
                      Text("min temp:30"),
                      Text("max temp:30")
                    ],)
                  ],
                ),
              ),
              SizedBox(height: 20)
              ,Text("Clear",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              Spacer(flex: 7,)
        ]),
      ),

    ),
    );
  }
}