
import 'package:flutter/material.dart';


import 'package:project_1/colors.dart';
import 'package:project_1/styles_text.dart';
class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? action;
  const Toolbar({super.key, required this.title, this.action});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.background,
      title: Text(title,style: TextDesign.header2,),
      centerTitle: false,
      actions: action ,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
