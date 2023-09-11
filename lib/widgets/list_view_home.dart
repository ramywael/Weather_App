import 'package:flutter/material.dart';

import 'list_view_home_item.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ListViewHomeItem();
        },
      ),
    );
  }
}
