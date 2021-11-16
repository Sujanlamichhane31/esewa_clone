import 'package:esewa_clone/pages/homepage.dart';
import 'package:esewa_clone/provider/balance_visibility_provider.dart';
import 'package:esewa_clone/provider/bottom_navigation_provider.dart';
import 'package:esewa_clone/provider/expanded_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utils/theme.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (_)=> ThemeNotifier(),
       ),
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
     child: Consumer<ThemeNotifier>(
       builder: (context,ThemeNotifier notifier, child){
         return MaterialApp(
             debugShowCheckedModeBanner: false,
             title: 'Esewa UI',
             theme: notifier.darkTheme?dark:light,
             home: HomePage()
         );
       },
     )
   );
  }
}
