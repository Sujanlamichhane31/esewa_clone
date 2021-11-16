import 'package:flutter/cupertino.dart';

class ExpandedProvider with ChangeNotifier{

bool _isExpanded=false;
  get isExpanded=> _isExpanded;

  set isExpanded(bool expanded){
    _isExpanded=expanded;
    notifyListeners();
  }
}