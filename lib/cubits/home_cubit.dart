import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../models/home_model.dart';
import '../services/home_page_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  String cityName="London";
  HomeCubit(this.service) : super(HomeInitial());
  HomePageServices  service;
  HomeModel? model;
  String? formattedDate;

  Future<void> getHomePageData() async
  {
    emit(HomeLoading());
    try{
      model= await service.getWeatherData(cityName: cityName);
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
    }else if(model!.weatherStateName == "Heavy rain")
    {
      return "assets/heavyrain.png";
    }else if(model!.weatherStateName == "Light ain")
    {
      return "assets/lightrain.png";
    }else if(model!.weatherStateName == "Showers" || model!.weatherStateName == "Light Rain Shower")
    {
      return "assets/lightrainshower.png";
    }else if(model!.weatherStateName == "Sleet"  || model!.weatherStateName=="Light Sleet" || model!.weatherStateName== "Light sleet showers")
    {
      return "assets/lightdrizzle.png";
    }else if(model!.weatherStateName == "Snow" || model!.weatherStateName =="Mist")
    {
      return "assets/mist.png";
    }else if(model!.weatherStateName == "Thunderstorm" || model!.weatherStateName == "Thunderyoutbreakspossible" || model!.weatherStateName =="Lighting" )
    {
      return "assets/thunderyoutbreakspossible.png";
    }else if(model!.weatherStateName == "Heavy cloud")
    {
      return "assets/heavycloudy.png";
    }else if(model!.weatherStateName == "Light cloud" || model!.weatherStateName == "Over cast")
    {
      return "assets/overcast.png";
    }else if(model!.weatherStateName == "Lightning")
    {
      return "assets/lightning.png";
    }else if(model!.weatherStateName == "Mist")
    {
      return "assets/mist.png";
    }else if(model!.weatherStateName == "Patchy rain possible")
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
    }else if(model!.weatherStateName == "Blowing snow")
    {
      return "assets/overcast.png";
    }else if(model!.weatherStateName == "Clear")
    {
      return "assets/clear.png";
    }else if(model!.weatherStateName == "Partly cloudy")
      {
        return "assets/partlycloudy.png";
      }
    else if(model!.weatherStateName == "Moderate Rain Shower" || model!.weatherStateName == "Heavy Rain Shower")
      {
        return "assets/moderateorheavyrainshower.png";
      } else if (model!.weatherStateName == "Moderate or Heavy Rain" || model!.weatherStateName == "Moderate rain")
        {
          return "assets/moderaterain.png";
        }
    else{
      return "assets/clear.png";
    }
  }

  String getCurrentImage()
  {
    if(  model!.condition == "Sunny" )
    {
      return "assets/sunny.png";
    }else if(model!.condition == "Heavy rain")
    {
      return "assets/heavyrain.png";
    }else if(model!.condition == "Light ain")
    {
      return "assets/lightrain.png";
    }else if(model!.condition == "Showers" || model!.condition == "Light Rain Shower")
    {
      return "assets/lightrainshower.png";
    }else if(model!.condition == "Sleet"  || model!.condition=="Light Sleet" || model!.condition== "Light sleet showers")
    {
      return "assets/lightdrizzle.png";
    }else if(model!.condition == "Snow" || model!.condition =="Mist")
    {
      return "assets/mist.png";
    }else if(model!.condition == "Thunderstorm" || model!.condition == "Thunderyoutbreakspossible" || model!.condition =="Lighting" )
    {
      return "assets/thunderyoutbreakspossible.png";
    }else if(model!.condition == "Heavy cloud")
    {
      return "assets/heavycloudy.png";
    }else if(model!.condition == "Light cloud" || model!.condition == "Over cast")
    {
      return "assets/overcast.png";
    }else if(model!.condition == "Lightning")
    {
      return "assets/lightning.png";
    }else if(model!.condition == "Mist")
    {
      return "assets/mist.png";
    }else if(model!.condition == "Patchy rain possible")
    {
      return "assets/patchyrainpossible.png";
    }else if(model!.condition == "Patchy Snow Possible")
    {
      return "assets/patchy_snow_possible.png";
    }else if(model!.condition == "Patchy Sleet Possible")
    {
      return "assets/patchy_sleet_possible.png";
    }else if(model!.condition == "Patchy Freezing Drizzle Possible")
    {
      return "assets/patchy_freezing_drizzle_possible.png";
    }else if(model!.condition == "Thundery Outbreaks Possible")
    {
      return "assets/thundery_outbreaks_possible.png";
    }else if(model!.condition == "Blowing snow")
    {
      return "assets/overcast.png";
    }else if(model!.condition == "Clear")
    {
      return "assets/clear.png";
    }else if(model!.condition == "Partly cloudy")
    {
      return "assets/partlycloudy.png";
    }
    else if(model!.condition == "Moderate Rain Shower" || model!.condition == "Heavy Rain Shower")
    {
      return "assets/moderateorheavyrainshower.png";
    } else if (model!.condition == "Moderate or Heavy Rain" || model!.condition == "Moderate rain")
    {
      return "assets/moderaterain.png";
    }
    else{
      return "assets/clear.png";
    }
  }



}
