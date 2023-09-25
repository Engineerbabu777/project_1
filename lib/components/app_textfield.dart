
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeholder;
  const AppTextField({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: placeholder,
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        fillColor: Colors.white54,
        filled: true,
      ),
    );
  }
}
