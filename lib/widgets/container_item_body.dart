// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weather_api/cubits/home_cubit.dart';
// import 'container_item_bar.dart';
// import 'container_item_footer.dart';
// import 'custom_text.dart';
//
// class ContainerItemBody extends StatelessWidget {
//    const  ContainerItemBody({Key? key,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  BlocBuilder<HomeCubit,HomeState>(
//       builder: (BuildContext context, state) {
//         if(state is HomeFailure) {
//           return  Center(child: Text(state.error) );
//         }else if(state is HomeSucceed)
//           {
//             final model=state.model;
//             return  Column(
//               children: [
//                 const ContainerItemBar(),
//                 Image.asset(
//                   BlocProvider.of<HomeCubit>(context).getImage(),
//                   width: 180,
//                   height: 180,
//                 ),
//                 CustomText(text: "${model!.temp}°", color: const Color(0xffA9CBEC), sizeFont: 50),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 CustomText(
//                     text: model.weatherStateName,
//                     color: Colors.white.withOpacity(.5),
//                     sizeFont: 25),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 CustomText(
//                     text: BlocProvider.of<HomeCubit>(context).formattedDate!,
//                     color: Colors.white.withOpacity(.5),
//                     sizeFont: 15),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Divider(
//                   color: Colors.white.withOpacity(.5),
//                   thickness: 1,
//                   indent: 30,
//                   endIndent: 30,
//                 ),
//                  ContainerItemFooter(model: model),
//               ],
//             );
//           }else
//             {
//               return const Center(child: CircularProgressIndicator(color: Colors.white,));
//             }
//       },
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/home_cubit.dart';
import 'package:weather_api/models/home_model.dart';
import 'container_item_bar.dart';
import 'container_item_footer.dart';
import 'custom_text.dart';

class ContainerItemBody extends StatelessWidget {
  final HomeModel model;
  const  ContainerItemBody({Key? key, required this.model,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const ContainerItemBar(),
        Image.asset(
          BlocProvider.of<HomeCubit>(context).getImage(),
          width: 180,
          height: 180,
        ),
        CustomText(text: "${model.temp}°", color: const Color(0xffA9CBEC), sizeFont: 50),
        const SizedBox(
          height: 10,
        ),
        CustomText(
            text: model.weatherStateName,
            color: Colors.white.withOpacity(.5),
            sizeFont: 25),
        const SizedBox(
          height: 10,
        ),
        CustomText(
            text: BlocProvider.of<HomeCubit>(context).formattedDate!,
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
        ContainerItemFooter(model: model),
      ],
    );

  }
}


