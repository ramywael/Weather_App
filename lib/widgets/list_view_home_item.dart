import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/home_cubit.dart';
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
      padding: const EdgeInsets.only(left: 15,bottom: 20),
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
              forecastsList.getImage(),
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

}
