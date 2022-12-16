import 'package:day1/Widgets/themes.dart';
import 'package:day1/pages/cart_page.dart';
import 'package:day1/pages/home_page.dart';
import 'package:day1/pages/login_page.dart';
import 'package:day1/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
