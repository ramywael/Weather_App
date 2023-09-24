import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../models/detail_list.dart';
import '../models/home_model.dart';
import '../models/list_model.dart';
import '../services/home_page_service.dart';
import '../services/hour_list.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  String cityName="London";
  HomeCubit(this.service,) : super(HomeInitial());
  HomePageServices  service;
  HomeModel? model;
  String? formattedDate;
  HomeHourDataServices  services= HomeHourDataServices(Dio());
  Map<String,dynamic>? data ;
  List <HomeHourModel> modelHour=[];
  final currentTime = DateTime.now();
  final List<HomeHourModel> forecastsListFiltered = <HomeHourModel> [];
  Future<void> getHomePageData() async
  {
    if(modelHour.isNotEmpty )
      {
        modelHour.clear();
      }
    emit(HomeLoading());
    try{
      // model= (await service.getWeatherData(cityName: cityName)) as HomeModel? ;
      data= (await service.getWeatherData(cityName: cityName)) as Map<String,dynamic>?;
      model=HomeModel.fromJson(data);
      await getForecastList(data);
       formattedDate = DateFormat('E, MMM d').format(model!.date);
      emit(HomeSucceed(forecastsListFiltered, model: model));
    }catch(e)
    {
      emit(HomeFailure(error: e.toString()));
    }

  }

  Future<void> getForecastList(dynamic data) async {
    // modelHour = await services.getWeatherData(cityName: cityName);
    List<dynamic> list = data["forecast"]["forecastday"][0]["hour"];
    for(var hourItem in list)
      {
        HomeHourModel hourModel = HomeHourModel(
          time: DateTime.parse(hourItem["time"]),
          weatherStateName: hourItem["condition"]["text"],
          temp_c: hourItem["temp_c"],
        );
        modelHour.add(hourModel);
      }
    forecastsListFiltered.clear();
    final currentIndex = modelHour.indexWhere((forecast) =>
    forecast.time.hour == currentTime.hour);
    if(currentIndex != -1)
    {
      forecastsListFiltered.add(modelHour[currentIndex!]);
      // Add items before the current time
      // Add items after the current time
      forecastsListFiltered.addAll(modelHour.sublist(currentIndex + 1));
      forecastsListFiltered.addAll(modelHour.sublist(0, currentIndex));
    }
  }


  // Future<DetailListModel> () {
  //   emit(HomeLoading());
  //   try{
  //     model= (await service.getWeatherData(cityName: cityName)) as HomeModel? ;
  //     formattedDate = DateFormat('E, MMM d').format(model!.date);
  //     emit(HomeSucceed(model: model));
  //   }catch(e)
  //   {
  //     emit(HomeFailure(error: e.toString()));
  //   }
  // }

}
