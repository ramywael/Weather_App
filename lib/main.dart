import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/services/home_page_service.dart';

import 'cubits/home_cubit.dart';
import 'helper/consumer.dart';
import 'views/home_view.dart';

void main()  {
  Bloc.observer= SimpleObserver();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (BuildContext context) {
        return HomeCubit(HomePageServices(Dio()));
        },
      child: const HomeView()),
    );
  }
}
