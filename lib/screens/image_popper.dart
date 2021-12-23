import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:unsplash/models/wallpaper.dart';
import 'package:unsplash/themes/themedata.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';

class ImagePop extends StatefulWidget {
  final WallpaperData walls;
  const ImagePop({Key? key, required this.walls}) : super(key: key);

  @override
  _ImagePopState createState() => _ImagePopState();
}

class _ImagePopState extends State<ImagePop> {
  Future<void> setwallpaper() async {
    int location = WallpaperManagerFlutter.BOTH_SCREENS;
    var file = await DefaultCacheManager().getSingleFile(widget.walls.url);
    var result =
        await WallpaperManagerFlutter().setwallpaperwithFile(file, location);
  }

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
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              widget.walls.url,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                setwallpaper();
              },
              child: Text(
                "Apply",
                softWrap: true,
                textScaleFactor: 0.9,
                style: TextStyle(
                    color: UnSplashTheme.bluishShade,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.all(32),
      //   margin: const EdgeInsets.symmetric(horizontal: 80),
      //   child: TextButton(
      //     onPressed: () {},
      //     child: Text(
      //       "Apply wallpaper",
      //       style: TextStyle(
      //           color: UnSplashTheme.bluishShade,
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold),
      //     ),
      //   ),
      // ),
    );
  }
}
