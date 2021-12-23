import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unsplash/themes/themedata.dart';

class ImagePop extends StatelessWidget {
  final String imgUrl;
  const ImagePop({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(EvaIcons.close)),
          title: Text(
            "Preview",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              imgUrl,
              fit: BoxFit.fill,
            )),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(32),
            margin: const EdgeInsets.symmetric(horizontal: 80),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Apply wallpaper",
                style: TextStyle(
                    color: UnSplashTheme.bluishShade,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )));
  }
}
