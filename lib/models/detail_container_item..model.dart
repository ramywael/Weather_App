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
  String getContainerImage() {
    if(  condition == "Sunny" )
    {
      return "assets/sunny.png";
    }else if(condition == "Cloud")
    {
      return "assets/cloud.png";
    }
    else if(condition =="Cloudy")

    {
      return "assets/cloudy.png";
    }
    else if(condition == "Heavy rain")
    {
      return "assets/heavyrain.png";
    }else if(condition == "Light rain")
    {
      return "assets/lightrain.png";
    }else if(condition == "Showers" || condition == "Light Rain Shower")
    {
      return "assets/lightrainshower.png";
    }else if(condition == "Sleet"  || condition=="Light Sleet" ||condition== "Light sleet showers")
    {
      return "assets/lightdrizzle.png";
    }else if(condition == "Snow" || condition =="Mist")
    {
      return "assets/mist.png";
    }else if(condition == "Thunderstorm" || condition == "Thunderyoutbreakspossible" || condition =="Lighting" )
    {
      return "assets/thunderyoutbreakspossible.png";
    }else if(condition == "Heavy cloud")
    {
      return "assets/heavycloudy.png";
    }else if(condition == "Light cloud" || condition == "Overcast")
    {
      return "assets/overcast.png";
    }else if(condition == "Lightning")
    {
      return "assets/lightning.png";
    }else if(condition == "Mist")
    {
      return "assets/mist.png";
    }else if(condition == "Patchy rain possible")
    {
      return "assets/patchyrainpossible.png";
    }else if(condition == "Patchy Snow Possible")
    {
      return "assets/patchy_snow_possible.png";
    }else if(condition == "Patchy Sleet Possible")
    {
      return "assets/patchy_sleet_possible.png";
    }else if(condition == "Patchy Freezing Drizzle Possible")
    {
      return "assets/patchy_freezing_drizzle_possible.png";
    }else if(condition == "Thundery Outbreaks Possible")
    {
      return "assets/thundery_outbreaks_possible.png";
    }else if(condition == "Blowing snow")
    {
      return "assets/overcast.png";
    }else if(condition == "Clear")
    {
      return "assets/clear.png";
    }else if(condition == "Partly cloudy")
    {
      return "assets/partlycloudy.png";
    }
    else if(condition == "Moderate Rain Shower" || condition == "Heavy Rain Shower")
    {
      return "assets/moderateorheavyrainshower.png";
    } else if (condition == "Moderate or Heavy Rain" || condition == "Moderate rain")
    {
      return "assets/moderaterain.png";
    }
    else{
      return "assets/clear.png";
    }
  }

}
