
import 'package:flutter/material.dart';
import 'package:weather_api/widgets/container_item.dart';

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
            const   Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Today",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(onPressed:() {

            },  child: const Text(
              "Forecasts",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),),
          ],
        ),
        Expanded(
          child: ListView.builder(itemCount: 10,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
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
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const   Text(
                      "12:00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Image.asset(
                      "assets/cloud.png",
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "32°",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },),
        ),
      ],
    );
  }
}
