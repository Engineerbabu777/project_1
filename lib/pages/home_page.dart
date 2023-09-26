import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_1/colors.dart';
import 'package:project_1/components/post_item.dart';
import 'package:project_1/components/toolbar.dart';
import 'package:project_1/styles_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: 'Home Page',
        action: [
          IconButton(
            onPressed: (){ Navigator.of(context).pushNamed('/map'); },
            icon: Icon(Icons.location_on_outlined),),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
        itemCount: users.length,
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 400; i++) {
      users.add('user number $i');
    }
  }
}
