import 'package:dio/dio.dart';

class HomePageServices {
  final Dio dio;
  final String apiKey="f79021cda50a4932b50114701230705";
  HomePageServices(this.dio);

  void getWeatherData() async{
    //Get the weather data from the API
    Response  response = await dio.get("http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=London&days=1");
    // we donot need to decode the json data because dio does it for us

  }
}
