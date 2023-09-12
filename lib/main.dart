import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_api/services/home_page_service.dart';

import 'views/home_view.dart';

void main() async {
 await HomePageServices(Dio()).getWeatherData();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
