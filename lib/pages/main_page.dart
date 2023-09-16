import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedIconTheme: IconThemeData(color: Colors.red),
        items: [
           BottomNavigationBarItem(
            icon:  SvgPicture.asset('assets/home.svg'),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:  SvgPicture.asset('assets/heart.svg'),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:  SvgPicture.asset('assets/group8.svg'),
              label: 'Add post'
          ),
          BottomNavigationBarItem(
              icon:  SvgPicture.asset('assets/group8.svg'),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:  SvgPicture.asset('assets/icon.svg'),
              label: 'Home'
          ),

        ],

        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
           setState(() {
             currentIndex = index;
           });
         },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('heart'),),
    Center(child: Text('add post'),),
    Center(child: Text('messages'),),
    ProfilePage(),


  ];
}
