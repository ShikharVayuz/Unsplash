import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unsplash/screens/download_page.dart';
import 'package:unsplash/screens/home_screen.dart';
import 'package:unsplash/screens/user_settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [HomeScreen(), DownloadsPage(), UserSettings()];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).bottomAppBarColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedPageIndex,
        items: [
          // BottomNavigationBarItem(
          //   icon: Icon(CupertinoIcons.compass_fill, color: context.accentColor),
          // ),
          BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.cloudDownload), label: "Downloads"),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.personOutline), label: "Settings"),
          // BottomNavigationBarItem(
          //   icon: Icon(CupertinoIcons.graph_square, color: context.accentColor),
          // )
        ],
      ),
    );
  }
}
