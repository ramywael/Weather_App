import 'package:flutter/material.dart';

import 'custom_text.dart';

class ContainerItemBar extends StatelessWidget {
  const ContainerItemBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 12, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/menu.png",
            width: 40,
            height: 40,
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 25,
              ),
              SizedBox(
                width: 5,
              ),
              CustomText(
                  text: "London", color: Colors.white, sizeFont: 15),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_downward_sharp,
                color: Colors.white,
                size: 25,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/R.png",
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
