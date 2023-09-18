import 'package:flutter/material.dart';
import 'container_item_body.dart';
class ContainerView extends StatelessWidget {
  const ContainerView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12, left: 12, top: 55),
      decoration: BoxDecoration(
        boxShadow: const[
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 6,
            offset:  Offset(0, 2), // changes position of shadow
          ),
        ],

        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            const Color(0xff5C88ED).withOpacity(.8),
            const Color(0xff5C88ED),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child:  const ContainerItemBody(),
    );
  }
}
