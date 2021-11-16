import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconModel {
  final String iconName;
  final IconData iconData;
  IconModel({this.iconName, this.iconData});
}

final List<IconModel> items = [
  IconModel(iconData: FontAwesomeIcons.mobile, iconName: "Topup"),
  IconModel(iconData: FontAwesomeIcons.lightbulb, iconName: "Electricity"),
  IconModel(iconData: FontAwesomeIcons.faucet, iconName: "Khanepani"),
  IconModel(iconData: FontAwesomeIcons.wifi, iconName: "Internet"),
  IconModel(iconData: FontAwesomeIcons.plane, iconName: "Airlines"),
  IconModel(iconData: FontAwesomeIcons.building, iconName: "Co-operative"),
  IconModel(iconData: FontAwesomeIcons.tv, iconName: "TV"),
  IconModel(iconData: FontAwesomeIcons.graduationCap, iconName: "School fee"),
  IconModel(iconData: FontAwesomeIcons.umbrella, iconName: "Insurance"),
  IconModel(iconData: FontAwesomeIcons.creditCard, iconName: "Credit Card"),
  IconModel(iconData: FontAwesomeIcons.piggyBank, iconName: "Finance"),
  IconModel(iconData: FontAwesomeIcons.funnelDollar, iconName: "EMI"),
  IconModel(iconData: FontAwesomeIcons.simCard, iconName: "Recharge"),
  IconModel(iconData: FontAwesomeIcons.plusCircle, iconName: "Health"),
  IconModel(iconData: FontAwesomeIcons.mapMarked, iconName: "Cashout"),
  IconModel(iconData: FontAwesomeIcons.bus, iconName: "Bus ticket"),
];

List<Widget> getIconList(){
  List<Widget> childs=[];
  for(var i=0;i<items.length;i++){
    childs.add(
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(items[i].iconData,color: Color(0xff4AA124),),
              SizedBox(height: 10,),
              Text(
                items[i].iconName,
                style: TextStyle(
                  color: Color(0xff4AA124),
                  fontSize: 14,
                ),
              )
            ],
          ),
        )
    );
  }
  return childs;
}