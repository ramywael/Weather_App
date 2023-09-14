import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../models/list_model.dart';
import '../services/hour_list.dart';
part 'forecasts_list_state.dart';

class ForecastsListCubit extends Cubit<ForecastsListState> {
  ForecastsListCubit(this.service) : super(ForecastsListInitial());
  HomeHourDataServices  service;
  List <HomeHourModel>? model;
  final currentTime = DateTime.now();
  final forecastsListFiltered = <HomeHourModel> [];
  Future<void> getHomePageDataList() async
  {
    emit(ForecastsListLoading());
    try{
      model=await service.getWeatherData();
      final currentIndex = model?.indexWhere((forecast) =>
      forecast.time.hour == currentTime.hour);
      if(currentIndex != -1)
      {
        forecastsListFiltered.add(model![currentIndex!]);
        // Add items before the current time
        // Add items after the current time
        forecastsListFiltered.addAll(model!.sublist(currentIndex + 1));
        forecastsListFiltered.addAll(model!.sublist(0, currentIndex));
      }
      emit(ForecastsListSucceed(forecastsList: forecastsListFiltered));
    }catch(e)
    {
      emit(ForecastsListFailure(error: e.toString()));
    }
  }
}
