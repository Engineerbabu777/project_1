import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_1/colors.dart';
import 'package:project_1/components/bottom_navigation_item.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/profile_page.dart';




class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Menus currentIndex = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
extendBody: true,
      body: pages[currentIndex.index],
       bottomNavigationBar: MyBottomNavigation(currentIndex: currentIndex , onTap: (value) => setState(() {
         currentIndex = value;
       }),),
      
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

enum Menus {home, favorite, add, messages, user}

class MyBottomNavigation extends StatelessWidget {

  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            top:17,
            left:0,
            right:0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child: Row(
                children: [
                  Expanded(child: IconButton(onPressed:(){
                    onTap(Menus.home);
                  }  ,icon: SvgPicture.asset('assets/home.svg',
                    colorFilter: ColorFilter.mode(
                        currentIndex == Menus.home ? Colors.black : Colors.black.withOpacity(0.3),BlendMode.srcIn
            ),
                  ),),),
                  Expanded(child: IconButton(onPressed:(){
                    onTap(Menus.favorite);
                  }  ,icon: SvgPicture.asset('assets/heart.svg',
                    colorFilter: ColorFilter.mode(
                        currentIndex == Menus.favorite ? Colors.black : Colors.black.withOpacity(0.3),BlendMode.srcIn
                    ),
                  ),),),
                  Spacer(),
                  BottomNavigationItem(onPressed: ()=> onTap(Menus.messages),
                      icon: 'assets/message.svg', currentIndex: currentIndex,
                      name: Menus.messages),
                  BottomNavigationItem(onPressed: ()=> onTap(Menus.user),
                      icon: 'assets/icon.svg', currentIndex: currentIndex,
                      name: Menus.user)
                ],
              ),
            ),
          ),
          Positioned(
            left:0,
            right:0,
            top:0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: ColorConstants.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/add.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//
// class MyBottomNavigation extends StatefulWidget {
//   const MyBottomNavigation({super.key});
//
//   @override
//   State<MyBottomNavigation> createState() => _MyBottomNavigationState();
// }
//
// class _MyBottomNavigationState extends State<MyBottomNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 87,
//       margin: EdgeInsets.all(24),
//       child: Stack(
//         children: [
//           Positioned(
//             top:17,
//             left:0,
//             right:0,
//             child: Container(
//               height: 70,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(25))
//               ),
//               child: Row(
//                 children: [
//                   Expanded(child: IconButton(onPressed:(){}  ,icon: SvgPicture.asset('assets/home.svg'),),),
//                   Expanded(child: IconButton(onPressed:(){}  ,icon: SvgPicture.asset('assets/heart.svg'),),),
//                   Spacer(),
//                   Expanded(child: IconButton(onPressed:(){}  ,icon: SvgPicture.asset('assets/message.svg'),),),
//                   Expanded(child: IconButton(onPressed:(){}  ,icon: SvgPicture.asset('assets/icon.svg'),),),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left:0,
//             right:0,
//             top:0,
//             child: Container(
//               height: 64,
//               width: 64,
//               decoration: BoxDecoration(
//                 color: ColorConstants.primary,
//                 shape: BoxShape.circle,
//               ),
//               child: SvgPicture.asset('assets/add.svg'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
