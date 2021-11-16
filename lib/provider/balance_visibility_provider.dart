import 'package:flutter/cupertino.dart';

class BalanceVisibilityProvider with ChangeNotifier{

  bool _visibility=false;
  get visibility=> _visibility;

  set visibility(bool isvisible){
    _visibility=isvisible;
    notifyListeners();
  }
}