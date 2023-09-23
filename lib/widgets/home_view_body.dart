import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/forecasts_list_cubit.dart';
import 'package:weather_api/views/detail_view.dart';
import 'package:weather_api/widgets/container_item.dart';
import '../cubits/home_cubit.dart';
import 'custom_text.dart';
import 'list_view_home.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMethod();
    //model=BlocProvider.of<HomeCubit>(context).model!;
  }

  void getMethod() async {
    // await BlocProvider.of<HomeCubit>(context).getHomePageData().then((value) =>
    //     BlocProvider.of<ForecastsListCubit>(context).getHomePageDataList());
    BlocProvider.of<HomeCubit>(context).getHomePageData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSucceed) {
          return SingleChildScrollView(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeFailure) {
                  return const Center(
                    child: Text("Error"),
                  );
                } else if (state is HomeSucceed) {
                  final model = state.model;
                  final forecastList=state.forecastsList;
                  return Column(
                    children: [
                      ContainerView(model: model!),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: CustomText(
                              text: "Today",
                              color: Colors.black,
                              sizeFont: 25,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                DetailView.routeName,
                              );
                            },
                            child: const CustomText(
                              text: "Forecasts",
                              color: Colors.blueAccent,
                              sizeFont: 20,
                            ),
                          ),
                        ],
                      ),
                       ListViewHome(forecastsList: forecastList,),
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  );
                }
              },
            ),
          );
        } else if (state is HomeFailure) {
          return  Center(
            child: Text(state.error),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.lightBlue,
            ),
          );
        }
      },
    );
  }
}
