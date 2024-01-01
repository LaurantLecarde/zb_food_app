import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:floating_frosted_bottom_bar/app/frosted_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:zb_food_app/screens/bottom_screens/ball_screen.dart';
import 'package:zb_food_app/screens/bottom_screens/home_screen.dart';
import 'package:zb_food_app/screens/bottom_screens/location_screen.dart';
import 'package:zb_food_app/screens/bottom_screens/notification_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _activeIndex = 0;

  final screens = [
    HomeScreen(),
    LocationScreen(),
    BallScreen(),
    NotificationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0x7effffff),
      body: Center(child:screens[_activeIndex]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.green[900]),
            child: BottomNavigationBar(
              onTap: (t){
                setState(() {
                  _activeIndex = t;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home,color: Colors.grey), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_on_outlined,color: Colors.grey), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.adjust_rounded,color: Colors.grey), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none_outlined,color: Colors.grey), label: ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
