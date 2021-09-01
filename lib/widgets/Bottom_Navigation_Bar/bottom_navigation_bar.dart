import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/aboutus.dart';
import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/copyright.dart';
import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/home.dart';
import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/more_apps.dart';

class BottomNavigationBarr extends StatefulWidget {
  BottomNavigationBarr({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarrState createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int _currentIndex = 0;
  final page = [Home(), Aboutus(), Copyright(), MoreApps()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: page[_currentIndex],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.copyright),
            title: Text('Copyright'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text(
              'MoreApps',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('AboutUs'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
