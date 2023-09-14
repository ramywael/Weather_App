import 'package:dio/dio.dart';
import 'package:weather_api/models/list_model.dart';

class HomeHourDataServices {
  final Dio dio;
  final String apiKey = "f79021cda50a4932b50114701230705";
  HomeHourDataServices(this.dio);

  Future<List<HomeHourModel>> getWeatherData() async {
    List<HomeHourModel> model = [];
    //Get the weather data from the API
    Response response = await dio.get(
        "http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=London&days=7");
    // we donot need to decode the json data because dio does it for us
    Map<String, dynamic> data = response.data; // I receieved the data as a map
    //but I am interested in the list of the data ------>hours to display it
    //so I will convert the map to a list
    List<dynamic> list = data["forecast"]["forecastday"][0]["hour"];
    for (var hourItem in list) {
      HomeHourModel hourModel = HomeHourModel(
          time: DateTime.parse(hourItem["time"]),
          weatherStateName: hourItem["condition"]["text"],
          temp_c: hourItem["temp_c"]);
          model.add(hourModel);
    }
    return model;
  }
}
