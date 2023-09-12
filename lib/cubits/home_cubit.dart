import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/home_model.dart';
import '../services/home_page_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.service) : super(HomeInitial());
  HomePageServices  service;
  HomeModel? model;
  Future<void> getHomePageData() async
  {
    emit(HomeLoading());
    try{
      model= await service.getWeatherData();
      emit(HomeSucceed(model: model));
    }catch(e)
    {
      emit(HomeFailure(error: e.toString()));
    }

  }
}
