import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash/screens/home_screen.dart';
import 'package:unsplash/utils/routes.dart';
import 'package:unsplash/pages/HomePage.dart';
import 'package:unsplash/widgets/previewbar.dart';

import 'themes/themedata.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: UnSplashTheme.lightTheme(context),
      darkTheme: UnSplashTheme.darkTheme(context),
      home: HomePage(),
      routes: {
        MyRoutes.homePage: (context) => HomeScreen(),
        "/tabs": (context) => PreviewBar(),
      },
    );
  }
}
