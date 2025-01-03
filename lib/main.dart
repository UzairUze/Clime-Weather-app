import 'package:clima_weather_app/view/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/city_screen.dart';
import 'view/location_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
