import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/presentation/pages/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        highlightColor: Color.fromRGBO(242, 100, 20, 1),
        hintColor: Color.fromRGBO(103, 105, 108, 1),
        indicatorColor: Color.fromRGBO(241, 240, 244, 1),
        useMaterial3: true,
        fontFamily: 'CircularStd',
        textTheme: const TextTheme(

          //style for book weight
          bodySmall: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w300
          ),

          //style for regular weight
          bodyMedium: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w500
          ),

          //style for bold weight
          headlineMedium: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w700
          ),

          //style for black weight
          headlineLarge: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w900
          )
        )
      ),
      home: Home(),
    );
  }
}