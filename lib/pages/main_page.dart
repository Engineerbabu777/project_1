import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Navigation'),
      ),
      body: Center(
        child: Text('Body Centered'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
           BottomNavigationBarItem(
            icon:  Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_airport),
            label:'Airplane'
          ),

        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
