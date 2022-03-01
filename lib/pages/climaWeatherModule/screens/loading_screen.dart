import 'dart:async';

import 'package:first_demo_app/pages/climaWeatherModule/screens/location_screen.dart';
import 'package:first_demo_app/pages/climaWeatherModule/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:first_demo_app/pages/climaWeatherModule/services/weather.dart';

import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() {
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Center(
          child: SpinKitDoubleBounce(color: Colors.white, size: 100.0,),
        ),
      ),
    );
  }

  Future<void> getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LocationScreen(locationWether: weatherData,);
    }));
  }

  void getData() async {

  }

}
