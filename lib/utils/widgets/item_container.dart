import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ItemContainer extends StatelessWidget {
  ItemContainer({
    this.iconData1,
    this.iconData2,
    this.iconName,
    Key key,
  }) : super(key: key);

  final IconData iconData1;
  final IconData iconData2;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData1,
          size: 10,
          color: Colors.white,
        ),
        Icon(
          iconData2,
          size: 20,
          color: Colors.white,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          iconName,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
