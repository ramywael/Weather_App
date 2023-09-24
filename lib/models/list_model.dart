import 'package:weather_api/models/detail_list.dart';

class HomeHourModel {
  final DateTime time;
  final String weatherStateName;
  final double temp_c;
  HomeHourModel(
      {required this.time,
      required this.weatherStateName,
      required this.temp_c});

  String getImage() {
    {
      if (weatherStateName == "Sunny") {
        return "assets/sunny.png";
      } else if (weatherStateName == "Heavy rain") {
        return "assets/heavyrain.png";
      }else if(weatherStateName=="Cloudy")
      {
        return "assets/cloudy.png";
      }
      else if (weatherStateName == "Light rain") {
        return "assets/lightrain.png";
      } else if (weatherStateName == "Showers" ||
          weatherStateName == "Light rain shower") {
        return "assets/lightrainshower.png";
      } else if (weatherStateName == "Sleet" ||
          weatherStateName == "Light sleet" ||
          weatherStateName == "Light sleet showers") {
        return "assets/lightdrizzle.png";
      } else if (weatherStateName == "Snow" ||
          weatherStateName == "Mist") {
        return "assets/mist.png";
      } else if (weatherStateName == "Thunderstorm" ||
          weatherStateName == "Thunderyoutbreakspossible" ||
          weatherStateName == "Lighting") {
        return "assets/thunderyoutbreakspossible.png";
      } else if (weatherStateName == "Heavy cloud") {
        return "assets/heavycloudy.png";
      } else if (weatherStateName == "Light cloud" ||
          weatherStateName == "Overcast") {
        return "assets/overcast.png";
      } else if (weatherStateName == "Lightning") {
        return "assets/lightning.png";
      } else if (weatherStateName == "Mist") {
        return "assets/mist.png";
      } else if (weatherStateName == "Patchy rain possible") {
        return "assets/patchyrainpossible.png";
      } else if (weatherStateName == "Patchy snow possible") {
        return "assets/patchy_snow_possible.png";
      } else if (weatherStateName == "Patchy sleet possible") {
        return "assets/patchysleetpossible.png";
      } else if (weatherStateName ==
          "Patchy freezing drizzle possible") {
        return "assets/patchyfreezingdrizzlepossible.png";
      } else if (weatherStateName ==
          "Thundery outbreaks possible") {
        return "assets/thunderyoutbreakspossible.png";
      } else if (weatherStateName == "Blowing snow") {
        return "assets/overcast.png";
      } else if (weatherStateName == "Clear") {
        return "assets/clear.png";
      } else if (weatherStateName == "Partly cloudy") {
        return "assets/partlycloudy.png";
      } else if (weatherStateName == "Moderate rain shower" ||
          weatherStateName == "Heavy rain shower") {
        return "assets/moderateorheavyrainshower.png";
      } else if (weatherStateName == "Moderate or Heavy rain" ||
          weatherStateName == "Moderate rain") {
        return "assets/moderaterain.png";
      } else {
        return "assets/moderaterain.png";
      }
    }
  }

}
