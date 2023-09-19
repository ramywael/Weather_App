import 'package:flutter/material.dart';

class AddCityName extends StatelessWidget {
  const AddCityName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
