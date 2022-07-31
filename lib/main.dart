import 'package:flutter/material.dart';
import 'package:myapp/Screen/home.dart';
import 'package:myapp/Screen/loin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        // fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Homepage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}