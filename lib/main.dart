import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/forecasts_list_cubit.dart';
import 'package:weather_api/services/home_page_service.dart';
import 'package:weather_api/services/hour_list.dart';
import 'package:weather_api/views/detail_view.dart';
import 'cubits/home_cubit.dart';
import 'helper/consumer.dart';
import 'views/home_view.dart';

void main()  {
  // systemUIHideStatusBar();
  Bloc.observer= SimpleObserver();
  runApp( 
  MultiBlocProvider(
    providers: [
      BlocProvider<HomeCubit>(
        create: (BuildContext context) => HomeCubit(HomePageServices(Dio()))),
      // BlocProvider<ForecastsListCubit>(
      //   create: (BuildContext context) => ForecastsListCubit(HomeHourDataServices(Dio()))),
    ]
    , child:  const WeatherApp())
  );
}

// void systemUIHideStatusBar() {
//   SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
//     systemNavigationBarColor: Colors.blue.withOpacity(.6), // navigation bar color
//     statusBarColor: Colors.white, // status bar color
//   ),
//   );
// }

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        DetailView.routeName:(context)=> const DetailView(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
