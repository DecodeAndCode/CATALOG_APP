import 'package:day1/Widgets/themes.dart';
import 'package:day1/core/store.dart';
import 'package:day1/pages/cart_page.dart';
import 'package:day1/pages/home_page.dart';
import 'package:day1/pages/login_page.dart';
import 'package:day1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(),child: MyApp()));
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
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
