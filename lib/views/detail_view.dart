import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailView extends StatelessWidget {
  static String routeName = '/detail';
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor:
            Colors.blue.withOpacity(.6), // navigation bar color
        statusBarColor: const Color(0xff81A5F3), // status bar color
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Forecasts"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          ),
        ],
        backgroundColor: const Color(0xff81A5F3),
      ),
      backgroundColor: const Color(0xff81A5F3),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 80),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            )),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
             bottom: 300,
              left: 15,
              width: 360,
            height: 320,
              child: Container(
                decoration: BoxDecoration(
                  gradient:  const LinearGradient(
                    colors: [
                      // Color(0xffB3C0F5),
                      // Color(0xff81A5F3),
                      Color(0xffa9c1f5),
                      Color(0xff6696f5),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                bottom: 45,
                                left: 5,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/moderaterain.png",
                                      height: 160,
                                      width: 160,
                                    ),
                                    const Text(
                                      "Light Rain",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      const  Padding(
                          padding:  EdgeInsets.only(bottom: 40),
                          child:  Text(
                            "20°",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/windspeed.png",
                          width: 50,
                          height: 50,
                        ),
                        Image.asset(
                          "assets/humidity.png",
                          width: 50,
                          height: 50,
                        ),
                        Image.asset(
                          "assets/cloud.png",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "20 km/h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          "10 %",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "80 %",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
