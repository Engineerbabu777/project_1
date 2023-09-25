
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double width;
  final double height;
  const UserAvatar({super.key, this.width=40,  this.height=40});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Image.asset(
        'assets/user.jpg',
        width: width,
        height: height,
      ),
    );
  }
}
