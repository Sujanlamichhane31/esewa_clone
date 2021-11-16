import 'package:esewa_clone/bottom_navigation_bar/bottom_navigation_container.dart';
import 'package:esewa_clone/models/popular_service_model.dart';
import 'package:esewa_clone/utils/widgets/advertisement_container.dart';
import 'package:esewa_clone/utils/widgets/balance_container.dart';
import 'package:esewa_clone/utils/widgets/middle_container.dart';
import 'package:esewa_clone/utils/widgets/popular_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> showToast() {
    return Fluttertoast.showToast(
        msg: "Refreshed successfully",
        fontSize: 18,
        backgroundColor: Colors.lightGreen,
        gravity: ToastGravity.CENTER,
  );
  }


    @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 30,
          child: Icon(
            FontAwesomeIcons.qrcode,
            size: 30,
            color: Colors.black,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBarContainer(),
        body: RefreshIndicator(
          onRefresh: (){
            return showToast();
          },
          child: SingleChildScrollView(

            child: Container(
                child: Column(
              children: [
                Container(
                  height: height * 0.26,
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.22,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(40.0),
                              bottomEnd: Radius.circular(40.0),
                            )),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.grey[200],
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey[400],
                                  size: 25,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        showToast();
                                      },
                                      icon: Icon(
                                        Icons.search,
                                        size: 30,
                                        color: Colors.white,
                                      )),
                                  Badge(
                                    badgeContent: Text(
                                      '3',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.bell,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.more_vert,
                                        size: 30,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      BalanceContainer(height: height, width: width)
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MiddleContainer(),
                SizedBox(
                  height: 15,
                ),
                AdvertisementContainer(),
                SizedBox(
                  height: 15,
                ),
                PopularCarousel(
                  width: width,
                  popularServiceModel: popularList,
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            )),
          ),
        ));
  }
}
