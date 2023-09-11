import 'package:flutter/material.dart';

import 'custom_text.dart';

class ContainerItemFooter extends StatelessWidget {
  const ContainerItemFooter({Key? key}) : super(key: key);

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
              const CustomText(
                  text: "12 km/h", color: Colors.white, sizeFont: 15),
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
              const CustomText(
                  text: "42%", color: Colors.white, sizeFont: 15),
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
              const CustomText(
                  text: "20%", color: Colors.white, sizeFont: 15),
            ],
          ),
        ],
      ),
    );
  }
}
