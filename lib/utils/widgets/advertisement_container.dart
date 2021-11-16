import 'package:carousel_slider/carousel_slider.dart';
import 'package:esewa_clone/models/ad_model.dart';
import 'package:flutter/material.dart';
class AdvertisementContainer extends StatelessWidget {
  const AdvertisementContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images,
      options: CarouselOptions(
        height: 100,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
