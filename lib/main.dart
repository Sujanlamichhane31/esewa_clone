import 'package:esewa_clone/pages/homepage.dart';
import 'package:esewa_clone/provider/balance_visibility_provider.dart';
import 'package:esewa_clone/provider/bottom_navigation_provider.dart';
import 'package:esewa_clone/provider/expanded_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MultiProvider(
     providers: [

       ChangeNotifierProvider.value(
         value: BottomNavigationBarProvider(),
       ),
       ChangeNotifierProvider.value(
         value: ExpandedProvider(),
       ),

       ChangeNotifierProvider.value(
         value: BalanceVisibilityProvider(),
       ),
     ],
     child:MaterialApp(
             debugShowCheckedModeBanner: false,
             title: 'Esewa UI',
             home: HomePage()

   )
   );
  }
}
