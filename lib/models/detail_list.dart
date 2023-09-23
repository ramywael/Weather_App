
class DetailListModel
{
  final DateTime date;
  final double maxtemp_c;
  final double mintemp_c;
  final String weatherStateName;
  final int daily_chance_of_rain;


  DetailListModel({
    required this.date,
    required this.maxtemp_c,
    required this.mintemp_c,
    required this.weatherStateName,
    required this.daily_chance_of_rain,
  });

  // factory DetailListModel.fromJson(dynamic data)
  // {
  //   List<DetailListModel> model = [];
  //   var jsonData = data["forecast"]["forecastday"][0];
  //   for(var deailyItem in jsonData)
  //   {
  //     DetailListModel detailModel = DetailListModel(
  //       date: DateTime.parse(deailyItem["date"]),
  //       maxtemp_c: deailyItem["day"]["maxtemp_c"],
  //       mintemp_c: deailyItem["day"]["mintemp_c"],
  //       weatherStateName: deailyItem["day"]["condition"]["text"],
  //       daily_chance_of_rain: deailyItem["day"]["daily_chance_of_rain"],
  //     );
  //     model.add(detailModel);
  //   }
  // }
}