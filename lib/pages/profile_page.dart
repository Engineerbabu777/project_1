import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/components/toolbar.dart';
import 'package:project_1/styles_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profie',
        action: [
          PopupMenuButton<ProfileMenu>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('Log out'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  print('object 1');
                  break;
                case ProfileMenu.logout:
                  print('object 2');

                  break;
              }
              ;
            },
            icon: Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'assets/user.jpg',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text('Engineer Babu', style: TextDesign.header2),
          SizedBox(
            height: 12,
          ),
          Text('Taskim, Turkey', style: TextDesign.subtitle3),
          SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '223M',
                    style: TextDesign.header2,
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '79',
                    style: TextDesign.header2,
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '0',
                    style: TextDesign.header2,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
