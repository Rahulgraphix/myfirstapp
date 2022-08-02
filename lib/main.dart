import 'package:flutter/material.dart';
import 'package:myapp/Screen/home.dart';
import 'package:myapp/Screen/loin_page.dart';
import 'package:myapp/util/routes.dart';
import 'package:myapp/widgets/my_theame.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false, //for debug
      theme: MyTheame.lightTheame(context),

      initialRoute: "/",
      routes: {
        "/": (context) => Homepage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
