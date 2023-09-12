import 'package:flutter/material.dart';

import '../models/home_model.dart';
import 'custom_text.dart';

class ContainerItemFooter extends StatelessWidget {
  final HomeModel model;
  const ContainerItemFooter({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/windspeed.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(
                height: 10,
              ),
               CustomText(
                  text: "${model.maxwind_kph.toInt()} km/h", color: Colors.white, sizeFont: 15),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/humidity.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(
                height: 10,
              ),
               CustomText(
                  text: "${model.humidity.toInt()}%", color: Colors.white, sizeFont: 15),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/cloud.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(
                height: 10,
              ),
               CustomText(
                  text: "${model.uv.toInt()}%", color: Colors.white, sizeFont: 15),
            ],
          ),
        ],
      ),
    );
  }
}
