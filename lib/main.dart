import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0x00000000),
          systemNavigationBarColor: Color(0x00000000),
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark
        ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color(0xFFFEFEFE),
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          title: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Color(0xFF020F2F),
          ),
          subtitle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF737B97)
          ),
          caption: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xFF30323A)
          ),
          subhead: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF30323A)
          ),
          body1: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF30323A)
          ),
          body2: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: Color(0xFF9FA4B7)
          ),
          display1: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFFF09742),
            fontSize: 18
          ),
          display2: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF020F2F),
            fontSize: 18
          ),
        )
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
      },
    );
  }
}