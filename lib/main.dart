import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:womenbag_store_ui_kit/main_screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Women Bag App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF9F8FD),
        primaryColor: Color(0xFFFFB9C4),
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
      ),
      home: MyHomePage(),
    );
  }
}
