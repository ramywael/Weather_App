import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:weather_api/models/detail_list.dart';

import '../../models/detail_container_item..model.dart';
import '../../services/home_page_service.dart';

part 'detail_screen_state.dart';

class DetailScreenCubit extends Cubit<DetailScreenState> {
  Map<String,dynamic>? data;
   final HomePageServices service;
   List<DetailListModel> detailList=[];
     List<dynamic>? list;
     DetailContainerItem? modelContainer;
     DetailListModel? model;
  DetailScreenCubit({required this.service}) : super(DetailScreenInitial());

  Future<void> getDetailScreenData({String cityName="London"}) async {
    try {
      if(detailList.isNotEmpty )
        {
          detailList.clear();
        }
      emit(DetailScreenLoading());
      data= (await service.getWeatherData(cityName: cityName)) as Map<String, dynamic>?;
      modelContainer=DetailContainerItem.fromJson(data);
      getDailyData(data);
      emit(DetailScreenSucceed(model: modelContainer!,listModel: detailList));
    } catch (e) {
      emit(DetailScreenFailure(errorMessage: e.toString()));
    }
  }

  void getDailyData(data) {
    list=data!["forecast"]["forecastday"];
    for(var deailyItem in list!)
    {
      DetailListModel detailModel = DetailListModel(
        date: DateTime.parse(deailyItem["date"]),
        maxtemp_c: deailyItem["day"]["maxtemp_c"],
        mintemp_c: deailyItem["day"]["mintemp_c"],
        weatherStateName: deailyItem["day"]["condition"]["text"],
        daily_chance_of_rain: deailyItem["day"]["daily_chance_of_rain"],
      );
      detailList.add(detailModel);
    }
  }

}
