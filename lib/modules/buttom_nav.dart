
import 'package:LifeLine/pages/Feed.dart';
import 'package:LifeLine/pages/message.dart';
//import 'package:LifeLine/pages/dashboard.dart';
//import 'package:LifeLine/pages/home.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final tabs= [
    Container(
      child:FeedScreen(),
    ),
   
    Container(
      child:MessageBox(),
    ),

    Center(child:Text("profile")),
   /* Container(
      child:  Scaffold(
          body: HomeScreen(),
        ),
    )*/
  ];
    int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Request',
          ),
         /* BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),*/
         
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),  
        ],
        onTap:(index)
          {
            setState(() {
              _currentIndex=index;
            });
        }
      ),
    );
    
  }
}