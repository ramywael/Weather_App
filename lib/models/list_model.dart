import 'package:weather_api/models/detail_list.dart';

class HomeHourModel {
  final DateTime time;
  final String weatherStateName;
  final double temp_c;
  HomeHourModel(
      {required this.time,
      required this.weatherStateName,
      required this.temp_c});
}
