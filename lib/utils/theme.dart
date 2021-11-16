
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


ThemeData light = ThemeData(
  brightness:  Brightness.light,
  primarySwatch: Colors.lightGreen,
  scaffoldBackgroundColor: Colors.grey[200],
  iconTheme: IconThemeData(color: Colors.white),
  textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))
);


ThemeData dark= ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  primarySwatch: Colors.black26,
    textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))

);

class ThemeNotifier extends ChangeNotifier{
  final String key = "theme";
  SharedPreferences _prefs;

  bool _darkTheme=true;

  bool get darkTheme => _darkTheme;
  ThemeNotifier(){
    _darkTheme = true;
    _loadFromPrefs();
  }

  toggleTheme(){
    _darkTheme = !_darkTheme;
    _saveToPrefs();
    notifyListeners();
  }
  _initPrefs() async{
    if(_prefs== null){
      _prefs = await SharedPreferences.getInstance();
    }
  }

  _loadFromPrefs() async{
    await _initPrefs();
    _darkTheme = _prefs.getBool(key) ?? true;
    notifyListeners();
  }

  _saveToPrefs() async{
    await _initPrefs();
    _prefs.setBool(key, _darkTheme);
  }

}