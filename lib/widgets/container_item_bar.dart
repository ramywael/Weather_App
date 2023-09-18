import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/cubits/home_cubit.dart';

import 'custom_text.dart';

class ContainerItemBar extends StatelessWidget {
  const ContainerItemBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/menu.png",
            width: 40,
            height: 40,
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(
                width: 5,
              ),
               CustomText(
                  text: BlocProvider.of<HomeCubit>(context).cityName, color: Colors.white, sizeFont: 17),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                    return  Container(
                      margin:  EdgeInsets.only(right: 20,left: 20,bottom:MediaQuery.of(context).viewInsets.bottom+20),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter City Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                    );
                  },
                  );

                },
                icon: const Icon(
                  Icons.arrow_downward_sharp,
                  color: Colors.white,
                  size: 25,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/R.png",
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
