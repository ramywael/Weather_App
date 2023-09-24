class HomeModel {
  final DateTime date;
  final double temp;
  final double maxwind_kph;
  final String weatherStateName;
  final double humidity;
  final double uv;
  HomeModel({
    required this.date,
    required this.temp,
    required this.maxwind_kph,
    required this.weatherStateName,
    required this.humidity,
    required this.uv,
  });

  factory HomeModel.fromJson(dynamic data) {
    var jsonData = data["forecast"]["forecastday"][0]["day"];
    return HomeModel(
      date: DateTime.parse(data["forecast"]["forecastday"][0]["date"]),
      temp: jsonData["avgtemp_c"],
      maxwind_kph: jsonData["maxwind_kph"],
      weatherStateName: jsonData["condition"]["text"],
      humidity: jsonData["avghumidity"],
      uv: jsonData["uv"],
    );
  }


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
    }else if(weatherStateName == "Light cloud" || weatherStateName == "Overcast")
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


}
