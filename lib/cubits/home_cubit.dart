import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../models/home_model.dart';
import '../services/home_page_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.service) : super(HomeInitial());
  HomePageServices  service;
  HomeModel? model;
  String? formattedDate;
  Future<void> getHomePageData() async
  {
    emit(HomeLoading());
    try{
      model= await service.getWeatherData();
       formattedDate = DateFormat('E, MMM d').format(model!.date);
      emit(HomeSucceed(model: model));
    }catch(e)
    {
      emit(HomeFailure(error: e.toString()));
    }

  }
  String getImage()
  {
    if(  model!.weatherStateName == "Sunny" )
    {
      return "assets/sunny.png";
    }else if(model!.weatherStateName == "Heavy Rain")
    {
      return "assets/heavyrain.png";
    }else if(model!.weatherStateName == "Light Rain")
    {
      return "assets/lightrain.png";
    }else if(model!.weatherStateName == "Showers" || model!.weatherStateName == "Light Rain Shower")
    {
      return "assets/lightrainshower.png";
    }else if(model!.weatherStateName == "Sleet"  || model!.weatherStateName=="Light Sleet" || model!.weatherStateName== "Light Sleet Showers")
    {
      return "assets/lightdrizzle.png";
    }else if(model!.weatherStateName == "Snow" || model!.weatherStateName =="Mist")
    {
      return "assets/mist.png";
    }else if(model!.weatherStateName == "Thunderstorm" || model!.weatherStateName == "Thunderyoutbreakspossible" || model!.weatherStateName =="Lighting" )
    {
      return "assets/thunderyoutbreakspossible.png";
    }else if(model!.weatherStateName == "Heavy Cloud")
    {
      return "assets/heavycloudy.png";
    }else if(model!.weatherStateName == "Light Cloud" || model!.weatherStateName == "Over Cast")
    {
      return "assets/overcast.png";
    }else if(model!.weatherStateName == "Lightning")
    {
      return "assets/lightning.png";
    }else if(model!.weatherStateName == "Mist")
    {
      return "assets/mist.png";
    }else if(model!.weatherStateName == "Patchy Rain Possible")
    {
      return "assets/patchyrainpossible.png";
    }else if(model!.weatherStateName == "Patchy Snow Possible")
    {
      return "assets/patchy_snow_possible.png";
    }else if(model!.weatherStateName == "Patchy Sleet Possible")
    {
      return "assets/patchy_sleet_possible.png";
    }else if(model!.weatherStateName == "Patchy Freezing Drizzle Possible")
    {
      return "assets/patchy_freezing_drizzle_possible.png";
    }else if(model!.weatherStateName == "Thundery Outbreaks Possible")
    {
      return "assets/thundery_outbreaks_possible.png";
    }else if(model!.weatherStateName == "Blowing Snow")
    {
      return "assets/blowing_snow.png";
    }else if(model!.weatherStateName == "Clear")
    {
      return "assets/clear.png";
    }else if(model!.weatherStateName == "Partly Cloudy")
      {
        return "assets/partlycloudy.png";
      }
    else if(model!.weatherStateName == "Moderate Rain Shower" || model!.weatherStateName == "Heavy Rain Shower")
      {
        return "assets/moderateorheavyrainshower.png";
      } else if (model!.weatherStateName == "Moderate or Heavy Rain" || model!.weatherStateName == "Moderate Rain")
        {
          return "assets/moderaterain.png";
        }
    else{
      return "assets/clear.png";
    }
  }
}
