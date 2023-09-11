import 'package:flutter/material.dart';

import 'container_item_bar.dart';
import 'container_item_footer.dart';
import 'custom_text.dart';

class ContainerItemBody extends StatelessWidget {
  const ContainerItemBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const ContainerItemBar(),
        Image.asset(
          "assets/cloud.png",
          width: 200,
          height: 200,
        ),
        const CustomText(text: "32°", color: Color(0xffA9CBEC), sizeFont: 50),
        const SizedBox(
          height: 10,
        ),
        CustomText(
            text: "Cloudy",
            color: Colors.white.withOpacity(.5),
            sizeFont: 25),
        const SizedBox(
          height: 10,
        ),
        CustomText(
            text: "Friday,Sep 10",
            color: Colors.white.withOpacity(.5),
            sizeFont: 15),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.white.withOpacity(.5),
          thickness: 1,
          indent: 30,
          endIndent: 30,
        ),
        const ContainerItemFooter(),
      ],
    );
  }
}
