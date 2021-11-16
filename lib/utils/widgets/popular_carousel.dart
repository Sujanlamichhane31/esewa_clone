import 'package:esewa_clone/models/popular_service_model.dart';
import 'package:flutter/material.dart';
class PopularCarousel extends StatelessWidget {
  const PopularCarousel({
    Key key,
    @required this.width, @required this.popularServiceModel,
  }) : super(key: key);

  final double width;
  final List<PopularServiceModel> popularServiceModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10.0),
        height: 260,
        width: width - width * 0.08,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Popular Services", style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),),
            Container(
              height: 170.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularList.length,
                itemBuilder: (_,int index){
                  final PopularServiceModel popularlist=popularList[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              ),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Image.asset(popularlist.image,fit: BoxFit.fill),
                        ),
                        SizedBox(height: 10.0,),
                        Text(popularlist.title, style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                    },
                    child: Text(
                      "View More",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    )),
              ),
            )
          ],
        )
    );
  }
}
