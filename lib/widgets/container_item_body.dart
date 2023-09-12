import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/home_cubit.dart';
import 'package:weather_api/models/home_model.dart';
import 'container_item_bar.dart';
import 'container_item_footer.dart';
import 'custom_text.dart';

class ContainerItemBody extends StatefulWidget {
   const  ContainerItemBody({Key? key,}) : super(key: key);

  @override
  State<ContainerItemBody> createState() => _ContainerItemBodyState();
}

class _ContainerItemBodyState extends State<ContainerItemBody> {
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<HomeCubit,HomeState>(
      builder: (BuildContext context, state) {
        if(state is HomeFailure) {
          return  Center(child: Text("${state.error}") );
        }else if(state is HomeSucceed)
          {
            final model=state.model;
            return  Column(
              children: [
                const ContainerItemBar(),
                Image.asset(
                  "assets/cloud.png",
                  width: 200,
                  height: 200,
                ),
                CustomText(text: "${model!.temp}°", color: Color(0xffA9CBEC), sizeFont: 50),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                    text: "pfpwf",
                    color: Colors.white.withOpacity(.5),
                    sizeFont: 25),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                    text: "Friday,Sep 10",
                    color: Colors.white.withOpacity(.5),
                    sizeFont: 15),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white.withOpacity(.5),
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                ),
                const ContainerItemFooter(),
              ],
            );
          }else
            {
              return const Center(child: CircularProgressIndicator(color: Colors.white,));
            }
      },
    );
  }
}
