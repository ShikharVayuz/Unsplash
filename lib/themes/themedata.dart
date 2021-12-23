import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:google_fonts/google_fonts.dart';

class UnSplashTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.lato().fontFamily,
        backgroundColor: greyishcolor1,
        appBarTheme: AppBarTheme(
          backgroundColor: greyishcolor1,
          backwardsCompatibility: true,
          centerTitle: false,
          elevation: 0.0,
          brightness: Brightness.light,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(StadiumBorder()),
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: HexColor("#212121"),
        appBarTheme: AppBarTheme(
          backwardsCompatibility: true,
          centerTitle: false,
          elevation: 0.0,
          brightness: Brightness.dark,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(StadiumBorder()),
          ),
        ),
      );

  static Color greyishcolor1 = HexColor("#B7CAD2");
  static Color greyishcolor2 = HexColor("#DBE0E4");
  static Color bluishShade = HexColor("#6B9EB1");
  static Color brownish = HexColor("#54574B");
  static Color maroonish = HexColor("#866C77");
  static Color blackShade = HexColor("#09221D");
  static Color lightbrownish = HexColor("#AFA4A6");
  static Color bluegreyish = HexColor("#96B1CB");
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkBluishcolor = Color(0xff403b58);
}
