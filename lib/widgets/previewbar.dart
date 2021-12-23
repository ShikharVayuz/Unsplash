import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class PreviewBar extends StatefulWidget {
  const PreviewBar({Key? key}) : super(key: key);

  @override
  _PreviewBarState createState() => _PreviewBarState();
}

class _PreviewBarState extends State<PreviewBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(EvaIcons.close)),
          title: Text(
            "Preview",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
              labelColor: Theme.of(context).accentColor,
              unselectedLabelColor: Colors.grey[300],
              labelPadding: EdgeInsets.zero,
              automaticIndicatorColorAdjustment: true,
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: TextStyle(fontWeight: FontWeight.w500),
              tabs: <Widget>[
                Tab(
                  text: "Home screen",
                ),
                Tab(
                  text: "Lock screen",
                )
              ]),
        ),
        //body: TabBarView(children: []),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(EvaIcons.close), label: "Close"),
            BottomNavigationBarItem(
                icon: Icon(EvaIcons.infoOutline), label: "Info"),
          ],
        ),
      ),
    );
  }
}
