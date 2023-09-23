class HomeModel {
  final DateTime date;
  final double temp;
  final double maxwind_kph;
  final String weatherStateName;
  final double humidity;
  final double uv;
  final double temp_c;
  final String condition;
  final int cloud;
  final int humidity_h;
  final double wind_kph;
  HomeModel({
    required this.temp_c,
    required this.condition,
    required this.cloud,
    required this.humidity_h,
    required this.wind_kph,
    required this.date,
    required this.temp,
    required this.maxwind_kph,
    required this.weatherStateName,
    required this.humidity,
    required this.uv,
  });

  factory HomeModel.fromJson(dynamic data) {
    var jsonData = data["forecast"]["forecastday"][0]["day"];
    var jsonDataCurrent = data["current"];
    return HomeModel(
      date: DateTime.parse(data["forecast"]["forecastday"][0]["date"]),
      temp: jsonData["avgtemp_c"],
      maxwind_kph: jsonData["maxwind_kph"],
      weatherStateName: jsonData["condition"]["text"],
      humidity: jsonData["avghumidity"],
      uv: jsonData["uv"],
      temp_c: jsonDataCurrent["temp_c"],
      condition: jsonDataCurrent["condition"]["text"],
      cloud: jsonDataCurrent["cloud"],
      humidity_h: jsonDataCurrent["humidity"],
      wind_kph: jsonDataCurrent["wind_kph"],
    );
  }
}
