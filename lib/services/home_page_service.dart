import 'package:dio/dio.dart';
import 'package:weather_api/models/home_model.dart';

class HomePageServices {
  final Dio dio;
  final String apiKey = "f79021cda50a4932b50114701230705";
  HomePageServices(this.dio);

  Future<Object> getWeatherData({required String cityName, }) async {
  //  HomeModel? model;
    //Get the weather data from the API
    Response response = await dio.get(
        "http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$cityName&days=7");
    // we donot need to decode the json data because dio does it for us
    Map<String, dynamic> data = response.data;
    // model = HomeModel.fromJson(data);
    return data;
  }


}
