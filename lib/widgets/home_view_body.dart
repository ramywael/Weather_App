
import 'package:flutter/material.dart';
import 'package:weather_api/widgets/container_item.dart';

import 'custom_text.dart';
import 'list_view_home.dart';
import 'list_view_home_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const ContainerView(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               const Padding(
              padding:  EdgeInsets.only(left: 20),
              child: CustomText(
                  text: "Today",
                  color: Colors.white,
                  sizeFont: 25,
                  ),
            ),
            TextButton(onPressed:() {

            },  child: const CustomText(
                text: "Forecasts",
                color: Colors.white,
                sizeFont: 15,
                )
            ),
          ],
        ),
        const ListViewHome(),
      ],
    );
  }
}


