import 'package:esewa_clone/models/icon_model.dart';
import 'package:esewa_clone/provider/expanded_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MiddleContainer extends StatefulWidget {
  const MiddleContainer({Key key}) : super(key: key);

  @override
  _MiddleContainerState createState() => _MiddleContainerState();
}

class _MiddleContainerState extends State<MiddleContainer> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ExpandedProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width - width * 0.08,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: provider.isExpanded ? 400 : 200,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                children: getIconList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              child: RaisedButton(
                color: Colors.green,
                  onPressed: () {
                    provider.isExpanded = !provider.isExpanded;
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        provider.isExpanded ? "View Less" : "View More",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Icon(provider.isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down)
                    ],
                  )),
            )
          ],
        ));
  }
}
