import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/home_cubit.dart';
import 'package:weather_api/models/home_model.dart';

class DetailView extends StatefulWidget {
  static String routeName = '/detail';
  const DetailView({Key? key}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
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
        child: Column(
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: 18,
                    left: 15,
                    width: 360,
                    height: 320,
                    child: BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        if (state is HomeSucceed) {
                          final model = state.model;
                          return Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.2),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                              gradient: const LinearGradient(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                                  BlocProvider.of<HomeCubit>(context).getCurrentImage(),
                                                  height: 160,
                                                  width: 160,
                                                ),
                                                Text(
                                                  model!.condition,
                                                  style: const TextStyle(
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
                                     Padding(
                                      padding: const EdgeInsets.only(bottom: 40),
                                      child: Text(
                                        "${model.temp_c.toInt()}°",
                                        style:  const TextStyle(
                                          color: Colors.white,
                                          fontSize: 70,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                 Row(
                                  children: [
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "${model.wind_kph.toInt()} km/h",
                                      style:  const TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 55,
                                    ),
                                    Text(
                                      "${model.humidity_h.toInt()} %",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Text(
                                      "${model.cloud} %",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        } else if (state is HomeFailure) {
                          return Center(
                            child: Text(state.error),
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(
                                color: Colors.blueAccent),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        //    color: const Color(0xffF5F5F5),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Friday , 22 September",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "29°",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "15°",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/sunny.png",
                                  width: 25,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const Text(
                                  "Sunny",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  "91%",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Image.asset(
                                  "assets/sunny.png",
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
