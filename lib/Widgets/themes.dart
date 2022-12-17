import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBulishColor,
      accentColor: darkBulishColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lightBulishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        // color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: Theme.of(context)
            .textTheme
            .copyWith(
              headline6: context.textTheme.headline6,
            )
            .bodyText2,
        titleTextStyle: Theme.of(context)
            .textTheme
            .copyWith(
              headline6: context.textTheme.headline6,
            )
            .headline6,
      ));

  //colors from hex to color => Vx.hexToColor(code)
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBulishColor = Color(0xff403b58);
  static Color lightBulishColor = Vx.indigo500;
}
