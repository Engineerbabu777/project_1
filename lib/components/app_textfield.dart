
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeholder;
  const AppTextField({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: placeholder,
        labelText: placeholder,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        border:  const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent,),
            borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        fillColor: Colors.white54,
        filled: true,
      ),
    );
  }
}
