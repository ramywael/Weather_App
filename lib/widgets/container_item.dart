import 'package:flutter/material.dart';
import 'container_item_body.dart';
class ContainerView extends StatelessWidget {
  const ContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, top: 85),
      height: 545,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            const Color(0xff5C88ED).withOpacity(.8),
            const Color(0xff5C88ED),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const ContainerItemBody(),
    );
  }
}
