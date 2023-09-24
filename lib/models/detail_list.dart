
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

  String getImage() {
    if(  weatherStateName == "Sunny" )
    {
      return "assets/sunny.png";
    }else if(weatherStateName == "Heavy rain")
    {
      return "assets/heavyrain.png";
    }else if(weatherStateName == "Cloud")
    {
      return "assets/cloud.png";
    }
    else if(weatherStateName =="Cloudy")

    {
      return "assets/cloudy.png";
    }
    else if(weatherStateName == "Light rain")
    {
      return "assets/lightrain.png";
    }else if(weatherStateName == "Showers" || weatherStateName == "Light Rain Shower")
    {
      return "assets/lightrainshower.png";
    }else if(weatherStateName == "Sleet"  || weatherStateName=="Light Sleet" || weatherStateName== "Light sleet showers")
    {
      return "assets/lightdrizzle.png";
    }else if(weatherStateName == "Snow" || weatherStateName =="Mist")
    {
      return "assets/mist.png";
    }else if(weatherStateName == "Thunderstorm" || weatherStateName == "Thunderyoutbreakspossible" || weatherStateName =="Lighting" )
    {
      return "assets/thunderyoutbreakspossible.png";
    }else if(weatherStateName == "Heavy cloud")
    {
      return "assets/heavycloudy.png";
    }else if(weatherStateName == "Light cloud" || weatherStateName == "Over cast")
    {
      return "assets/overcast.png";
    }else if(weatherStateName == "Lightning")
    {
      return "assets/lightning.png";
    }else if(weatherStateName == "Mist")
    {
      return "assets/mist.png";
    }else if(weatherStateName == "Patchy rain possible")
    {
      return "assets/patchyrainpossible.png";
    }else if(weatherStateName == "Patchy Snow Possible")
    {
      return "assets/patchy_snow_possible.png";
    }else if(weatherStateName == "Patchy Sleet Possible")
    {
      return "assets/patchy_sleet_possible.png";
    }else if(weatherStateName == "Patchy Freezing Drizzle Possible")
    {
      return "assets/patchy_freezing_drizzle_possible.png";
    }else if(weatherStateName == "Thundery Outbreaks Possible")
    {
      return "assets/thundery_outbreaks_possible.png";
    }else if(weatherStateName == "Blowing snow")
    {
      return "assets/overcast.png";
    }else if(weatherStateName == "Clear")
    {
      return "assets/clear.png";
    }else if(weatherStateName == "Partly cloudy")
    {
      return "assets/partlycloudy.png";
    }
    else if(weatherStateName == "Moderate Rain Shower" || weatherStateName == "Heavy Rain Shower")
    {
      return "assets/moderateorheavyrainshower.png";
    } else if (weatherStateName == "Moderate or Heavy Rain" || weatherStateName == "Moderate rain")
    {
      return "assets/moderaterain.png";
    }
    else{
      return "assets/clear.png";
    }
  }


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