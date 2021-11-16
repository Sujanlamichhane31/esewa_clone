import 'package:esewa_clone/provider/balance_visibility_provider.dart';
import 'package:esewa_clone/utils/widgets/item_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<BalanceVisibilityProvider>(context);
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: height * 0.14,
          width: width - width * 0.08,
          decoration: BoxDecoration(
              color: Colors.black87.withOpacity(0.4),
              borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.wallet,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              provider.visibility?
                              "NPR 1269.11 \n Balance":"NPR XXXX.XX \n Balance",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            provider.visibility=!provider.visibility;
                          },
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white38,
                            child: Icon(
                              provider.visibility?
                              Icons.visibility:Icons.visibility_off,
                              color: Colors.white38,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              provider.visibility?
                              "131.11 \n Reward Point":"XXXX.XX \n Reward Point",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Container(
                                  child: Image.asset("assets/badge.png",
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemContainer(
                          iconData1: FontAwesomeIcons.arrowDown,
                          iconData2: FontAwesomeIcons.wallet,
                          iconName: "Load Money",
                        ),
                        ItemContainer(
                          iconData1: FontAwesomeIcons.arrowUp,
                          iconData2: FontAwesomeIcons.wallet,
                          iconName: "Send Money",
                        ),
                        ItemContainer(
                          iconData1: FontAwesomeIcons.arrowUp,
                          iconData2: FontAwesomeIcons.university,
                          iconName: "Bank Transfer",
                        ),
                        ItemContainer(
                          iconData1: FontAwesomeIcons.syncAlt,
                          iconData2: FontAwesomeIcons.rupeeSign,
                          iconName: "Remittance",
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
