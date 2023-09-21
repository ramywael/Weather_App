import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/forecasts_list_cubit.dart';

import '../cubits/home_cubit.dart';

class AddCityName extends StatefulWidget {
  const AddCityName({
    super.key,
  });
  @override
  State<AddCityName> createState() => _AddCityNameState();
}

class _AddCityNameState extends State<AddCityName> {
  String? cityName;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: 20,
          left: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20),
      child: TextField(
        onSubmitted: (value) async {
         cityName=value;
          BlocProvider.of<HomeCubit>(context).cityName = cityName!;
          BlocProvider.of<ForecastsListCubit>(context).cityName =
              cityName!;
         await BlocProvider.of<HomeCubit>(context).getHomePageData();
          BlocProvider.of<ForecastsListCubit>(context).getHomePageDataList();
        },
        controller: _controller,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hintText: "Enter city name eg: Cairo",
          prefixIcon: IconButton(
            onPressed: ()  {
              // BlocProvider.of<HomeCubit>(context).cityName = _controller.text;
              // BlocProvider.of<ForecastsListCubit>(context).cityName =
              //     _controller.text;
              // await BlocProvider.of<HomeCubit>(context).getHomePageData();
              // await BlocProvider.of<ForecastsListCubit>(context)
              //     .getHomePageDataList();
            },
            icon: const Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
          suffixIcon: IconButton(
              onPressed: () {
                _controller.clear();
              },
              icon: const Icon(
                Icons.clear,
                color: Colors.blue,
              )),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
    );
  }
}
