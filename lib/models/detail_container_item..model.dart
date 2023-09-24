class DetailContainerItem {
  final double temp_c;
  final String condition;
  final int cloud;
  final int humidity_h;
  final double wind_kph;

  DetailContainerItem({
    required this.temp_c,
    required this.condition,
    required this.cloud,
    required this.humidity_h,
    required this.wind_kph,
  });

  factory DetailContainerItem.fromJson(dynamic data) {
    var jsonData = data["current"];
    return DetailContainerItem(
        temp_c: jsonData["temp_c"],
        condition: jsonData["condition"]["text"],
        cloud: jsonData["cloud"],
        humidity_h: jsonData["humidity"],
        wind_kph: jsonData["wind_kph"]);
  }
}
