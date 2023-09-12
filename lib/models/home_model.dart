class HomeModel {
  final DateTime date;
  final double temp;
  final double maxwind_kph;
  final String weatherStateName;
  final double humidity;
  final double uv;

  HomeModel(
      {required this.date,
      required this.temp,
      required this.maxwind_kph,
      required this.weatherStateName,
      required this.humidity,
      required this.uv});

  factory HomeModel.fromJson(dynamic data) {
    var jsonData = data["forecast"]["forecastday"][0]["day"];

    return HomeModel(
        date: DateTime.parse(data["forecast"]["forecastday"][0]["date"]),
        temp: jsonData["avgtemp_c"],
        maxwind_kph: jsonData["maxwind_kph"],
        weatherStateName: jsonData["condition"]["text"],
        humidity: jsonData["avghumidity"],
        uv: jsonData["uv"]);
  }
}
