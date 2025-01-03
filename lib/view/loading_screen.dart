import 'dart:convert';
import 'package:clima_weather_app/view/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima_weather_app/services/weather.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherModel = await WeatherModel().getLocationWeather();

    // var temp = weatherData['main']['temp'];
    //    print(temp);
    Get.to(() => LocationScreen(
          weatherLocation: weatherModel,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SpinKitCircle(
            duration: Duration(seconds: 1),
            size: 100.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
