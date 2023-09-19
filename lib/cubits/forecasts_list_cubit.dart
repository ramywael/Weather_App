import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../models/list_model.dart';
import '../services/hour_list.dart';
part 'forecasts_list_state.dart';

class ForecastsListCubit extends Cubit<ForecastsListState> {
  ForecastsListCubit(this.service) : super(ForecastsListInitial());
  String cityName = "London";
  HomeHourDataServices  service;
  List <HomeHourModel>? model;
  final currentTime = DateTime.now();
    final List<HomeHourModel> forecastsListFiltered = <HomeHourModel> [];
  Future<void> getHomePageDataList() async
  {
    if(model!=null)
      {
        model!.clear();
      }
    emit(ForecastsListLoading());
    try{
      model=await service.getWeatherData(cityName: cityName);
      forecastsListFiltered.clear();
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

  // String getImage()
  // {
  //
  //     if(  forecastsListFiltered.iterator.current.weatherStateName== "Sunny" )
  //     {
  //       return "assets/sunny.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Heavy Rain")
  //     {
  //       return "assets/heavyrain.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Light Rain")
  //     {
  //       return "assets/lightrain.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Showers" || forecastsListFiltered.iterator.current.weatherStateName == "Light Rain Shower")
  //     {
  //       return "assets/lightrainshower.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Sleet"  ||forecastsListFiltered.iterator.current.weatherStateName=="Light Sleet" || forecastsListFiltered.iterator.current.weatherStateName== "Light Sleet Showers")
  //     {
  //       return "assets/lightdrizzle.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Snow" || forecastsListFiltered.iterator.current.weatherStateName =="Mist")
  //     {
  //       return "assets/mist.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Thunderstorm" || forecastsListFiltered.iterator.current.weatherStateName == "Thunderyoutbreakspossible" || forecastsListFiltered.iterator.current.weatherStateName =="Lighting" )
  //     {
  //       return "assets/thunderyoutbreakspossible.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Heavy Cloud")
  //     {
  //       return "assets/heavycloudy.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Light Cloud" || forecastsListFiltered.iterator.current.weatherStateName == "Over Cast")
  //     {
  //       return "assets/overcast.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Lightning")
  //     {
  //       return "assets/lightning.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Mist")
  //     {
  //       return "assets/mist.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Patchy Rain Possible")
  //     {
  //       return "assets/patchyrainpossible.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Patchy Snow Possible")
  //     {
  //       return "assets/patchy_snow_possible.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Patchy Sleet Possible")
  //     {
  //       return "assets/patchy_sleet_possible.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Patchy Freezing Drizzle Possible")
  //     {
  //       return "assets/patchy_freezing_drizzle_possible.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Thundery Outbreaks Possible")
  //     {
  //       return "assets/thundery_outbreaks_possible.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Blowing Snow")
  //     {
  //       return "assets/blowing_snow.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Clear")
  //     {
  //       return "assets/clear.png";
  //     }else if(forecastsListFiltered.iterator.current.weatherStateName == "Partly Cloudy")
  //     {
  //       return "assets/partlycloudy.png";
  //     }
  //     else if(forecastsListFiltered.iterator.current.weatherStateName == "Moderate Rain Shower" || forecastsListFiltered.iterator.current.weatherStateName== "Heavy Rain Shower")
  //     {
  //       return "assets/moderateorheavyrainshower.png";
  //     } else if (forecastsListFiltered.iterator.current.weatherStateName == "Moderate or Heavy Rain" ||forecastsListFiltered.iterator.current.weatherStateName == "Moderate Rain")
  //     {
  //       return "assets/moderaterain.png";
  //     }
  //     else{
  //       return "assets/clear.png";
  //     }
  //
  // }


}
