import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/forecasts_list_cubit.dart';
import 'package:weather_api/models/list_model.dart';

import 'list_view_home_item.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastsListCubit,ForecastsListState>(
      builder: (context, state) {
        if(state is ForecastsListSucceed)
          {
            List<HomeHourModel> forecastsListFiltered=BlocProvider.of<ForecastsListCubit>(context).forecastsListFiltered;
            return SizedBox(
              height: 130,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: forecastsListFiltered.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ListViewHomeItem(
                    forecastsList: forecastsListFiltered[index],
                    currentTime: DateTime.now(),
                  );
                },
              ),
            );
              }
          else if(state is ForecastsListFailure)
            {
              return  Center(child: Text(state.error),);
            }else
              {
                return const Center(child: CircularProgressIndicator(color: Colors.blueAccent),);
              }
      },

    );
  }
}
