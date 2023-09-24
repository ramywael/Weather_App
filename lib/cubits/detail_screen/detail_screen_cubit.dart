import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/detail_container_item.dart';
import '../../services/home_page_service.dart';

part 'detail_screen_state.dart';

class DetailScreenCubit extends Cubit<DetailScreenState> {
  Map<String,dynamic>? data;
   final HomePageServices service;
   final String cityName ="London";
    DetailContainerItem? model;
  DetailScreenCubit({required this.service}) : super(DetailScreenInitial());

  Future<void> getDetailScreenData() async {
    try {
      emit(DetailScreenLoading());
      data= (await service.getWeatherData(cityName: cityName)) as Map<String, dynamic>?;
      model=DetailContainerItem.fromJson(data);

      emit(DetailScreenSucceed(model: model!));
    } catch (e) {
      emit(DetailScreenFailure(errorMessage: e.toString()));
    }
  }
}
