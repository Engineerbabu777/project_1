import 'package:flutter/material.dart';
import 'package:project_1/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.background,
        title: const Text('Home'),
        centerTitle: false,
        actions: [
          Icon(Icons.logout),
        ],
      ),
      body: SingleChildScrollView(
        child: ListView(
          children: mockUsersFromServer(),
        ),
      )  ,
    );
  }
  Widget _userItems() {
    return Row(
      children: [Image.network('https://e0.pxfuel.com/wallpapers/673/688/desktop-wallpaper-allu-arjun-pushpa-allu-arjun-jiteshpatre-jitesh-patre-jitesh-alluarjun-pushpa-aa20-sukumar-allu-arjun-allu-arjun-hairstyle-allu-arjun-thumbnail.jpg',
        width:60,height:60,
      ),
        SizedBox(width: 12,),
        Text('Allu Arjun')
      ],
    );
  }

  List<Widget> mockUsersFromServer(){
    List<Widget> users = [];
      for(var i=0;i<200;i++){
        users.add(_userItems());
      }
    return users;

  }


}
