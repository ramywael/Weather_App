import 'package:flutter/material.dart';

class AddCityName extends StatefulWidget {
  const AddCityName({
    super.key,
  });

  @override
  State<AddCityName> createState() => _AddCityNameState();
}

class _AddCityNameState extends State<AddCityName> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(right: 20,left: 20,bottom:MediaQuery.of(context).viewInsets.bottom+20),
      child:  TextField(
        controller: _controller,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Colors.blue,
          ),
          hintText: "Enter city name",
          suffixIcon: IconButton(
            onPressed: () {
            _controller.clear();
            },
            icon: const Icon(
                Icons.clear,
            )
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
    );
  }
}
