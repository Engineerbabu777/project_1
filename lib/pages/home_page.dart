import 'package:flutter/material.dart';
import 'package:project_1/colors.dart';
import 'package:project_1/components/post_item.dart';
import 'package:project_1/styles_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.background,
        title: const Text('Home'),
        centerTitle: false,
        actions: [
          Icon(Icons.logout),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          separatorBuilder: (BuildContext context,int index){
             return SizedBox(height: 24,);
          },
          itemCount: users.length,
      )  ,
    );
  }


   mockUsersFromServer(){
      for(var i=0;i<400;i++){
        users.add('user number $i');
      }
  }


}
