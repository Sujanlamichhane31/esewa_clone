import 'package:esewa_clone/bottom_navigation_bar/bottom_nav_bar_item.dart';
import 'package:esewa_clone/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BottomAppBarContainer extends StatefulWidget {
  BottomAppBarContainer({Key key, this.provider}) : super(key: key);

  final BottomNavigationBarProvider provider;
  @override
  State<BottomAppBarContainer> createState() => _BottomAppBarContainerState();
}

class _BottomAppBarContainerState extends State<BottomAppBarContainer> {

  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<BottomNavigationBarProvider>(context);
    return BottomAppBar(
      notchMargin: 8,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 62,
        color: Colors.black.withOpacity(0.8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

              BottomNavBarItem(
                currentScreenIndex: 0,
                label: "Home",
                provider: provider,
                icon: FontAwesomeIcons.home,
              ),
                BottomNavBarItem(
                  currentScreenIndex: 1,
                  label: "Statement",
                  provider: provider,
                  icon: FontAwesomeIcons.file,
                ),

              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BottomNavBarItem(
                  currentScreenIndex: 2,
                  label: "My Payement",
                  provider: provider,
                  icon: FontAwesomeIcons.paypal,
                ),
                BottomNavBarItem(
                  currentScreenIndex: 3,
                  label: "Others",
                  provider: provider,
                  icon: FontAwesomeIcons.fileContract,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
