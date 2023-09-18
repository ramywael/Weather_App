import 'package:flutter/material.dart';
import 'package:weather_api/widgets/custom_text.dart';
import '../models/list_model.dart';

class ListViewHomeItem extends StatelessWidget {
  final HomeHourModel forecastsList;
  final DateTime currentTime;
  const ListViewHomeItem({
    super.key,
    required this.forecastsList,
    required this.currentTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 60,
        decoration: BoxDecoration(
          color: currentTime.hour == forecastsList.time.hour
              ? Colors.white
              : const Color(0xff5C88ED),
          borderRadius: BorderRadius.circular(
            28,
          ),
          // gradient: LinearGradient(
          //   colors: [
          //     const Color(0xff5C88ED).withOpacity(.8),
          //     const Color(0xff5C88ED),
          //   ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                text: "${forecastsList.time.hour}:00",
                color: const Color(0xffA9CBEC),
                sizeFont: 18),
            Image.asset(
              getImage(),
              width: 30,
              height: 30,
            ),
            CustomText(
                text: "${forecastsList.temp_c}°",
                color: const Color(0xffA9CBEC),
                sizeFont: 18),
          ],
        ),
      ),
    );
  }

  String getImage() {
    {
      if (forecastsList.weatherStateName == "Sunny") {
        return "assets/sunny.png";
      } else if (forecastsList.weatherStateName == "Heavy Rain") {
        return "assets/heavyrain.png";
      } else if (forecastsList.weatherStateName == "Light Rain") {
        return "assets/lightrain.png";
      } else if (forecastsList.weatherStateName == "Showers" ||
          forecastsList.weatherStateName == "Light Rain Shower") {
        return "assets/lightrainshower.png";
      } else if (forecastsList.weatherStateName == "Sleet" ||
          forecastsList.weatherStateName == "Light Sleet" ||
          forecastsList.weatherStateName == "Light Sleet Showers") {
        return "assets/lightdrizzle.png";
      } else if (forecastsList.weatherStateName == "Snow" ||
          forecastsList.weatherStateName == "Mist") {
        return "assets/mist.png";
      } else if (forecastsList.weatherStateName == "Thunderstorm" ||
          forecastsList.weatherStateName == "Thunderyoutbreakspossible" ||
          forecastsList.weatherStateName == "Lighting") {
        return "assets/thunderyoutbreakspossible.png";
      } else if (forecastsList.weatherStateName == "Heavy Cloud") {
        return "assets/heavycloudy.png";
      } else if (forecastsList.weatherStateName == "Light Cloud" ||
          forecastsList.weatherStateName == "Over Cast") {
        return "assets/overcast.png";
      } else if (forecastsList.weatherStateName == "Lightning") {
        return "assets/lightning.png";
      } else if (forecastsList.weatherStateName == "Mist") {
        return "assets/mist.png";
      } else if (forecastsList.weatherStateName == "Patchy Rain Possible") {
        return "assets/patchyrainpossible.png";
      } else if (forecastsList.weatherStateName == "Patchy Snow Possible") {
        return "assets/patchy_snow_possible.png";
      } else if (forecastsList.weatherStateName == "Patchy Sleet Possible") {
        return "assets/patchy_sleet_possible.png";
      } else if (forecastsList.weatherStateName ==
          "Patchy Freezing Drizzle Possible") {
        return "assets/patchy_freezing_drizzle_possible.png";
      } else if (forecastsList.weatherStateName ==
          "Thundery Outbreaks Possible") {
        return "assets/thundery_outbreaks_possible.png";
      } else if (forecastsList.weatherStateName == "Blowing Snow") {
        return "assets/blowing_snow.png";
      } else if (forecastsList.weatherStateName == "Clear") {
        return "assets/clear.png";
      } else if (forecastsList.weatherStateName == "Partly Cloudy") {
        return "assets/partlycloudy.png";
      } else if (forecastsList.weatherStateName == "Moderate Rain Shower" ||
          forecastsList.weatherStateName == "Heavy Rain Shower") {
        return "assets/moderateorheavyrainshower.png";
      } else if (forecastsList.weatherStateName == "Moderate or Heavy Rain" ||
          forecastsList.weatherStateName == "Moderate Rain") {
        return "assets/moderaterain.png";
      } else {
        return "assets/clear.png";
      }
    }
  }
}
