import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/screens/CategoryScreen.dart';
import 'package:newsapp/screens/homeScreen.dart';
import 'package:newsapp/screens/searchScreen.dart';
import 'package:newsapp/screens/splashScreen.dart';

void main()
{
  runApp(NewsApp());

}
class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        builder:()=> MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.deepPurple
          ),
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.id,
        routes: {
          HomeScreen.id:(context)=>HomeScreen(),
          SplashScreen.id:(context)=>SplashScreen(),
          CategoryScreen.id:(context)=>CategoryScreen(),
          SearchScreen.id:(context)=>SearchScreen(),
        },
      ),
    );
  }
}
