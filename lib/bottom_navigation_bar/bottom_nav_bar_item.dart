import 'package:esewa_clone/provider/bottom_navigation_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({Key key,
    this.label,
    this.icon,
    this.provider,
    this.currentScreenIndex})
      : super(key: key);

  final String label;
  final IconData icon;
  final BottomNavigationBarProvider provider;
  final int currentScreenIndex;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 30,
        onPressed: (){
          provider.currentIndex=currentScreenIndex;
        },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 26.0,
          color: Colors.lightGreen,),
        SizedBox(height: 3.0,),
        Text(label,style: TextStyle(
          fontSize: 14.0,
          color: Colors.white
        ),)
      ],
    ),
    );

  }
}
