import 'package:flutter/material.dart';
import 'package:weather_api/widgets/custom_text.dart';

class ListViewHomeItem extends StatelessWidget {
  const ListViewHomeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10,left: 15,),
      child: Container(
        width:60,
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(
            28,
          ),
          gradient: LinearGradient(
            colors: [
              const Color(0xff5C88ED).withOpacity(.8),
              const Color(0xff5C88ED),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(text: "12:00", color: Colors.white, sizeFont: 15),
            Image.asset(
              "assets/cloud.png",
              width: 30,
              height: 30,
            ),
            const CustomText(text: "32°", color: Colors.white, sizeFont: 15),
          ],
        ),
      ),
    );
  }
}