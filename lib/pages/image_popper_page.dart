import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash/models/wallpaper.dart';
import 'package:unsplash/models/wallpaper_state.dart';
import 'package:unsplash/themes/themedata.dart';

class ImagePop extends StatelessWidget {
  final String imgUrl;
  final WallpaperData wallpaperData;
  final VoidCallback onDelete;
  const ImagePop(
      {Key? key,
      required this.imgUrl,
      required this.wallpaperData,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final WallpaperState wallpaperState =
            context.read(wallpaperListProvider.notifier);
        return Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Hero(
                      tag: imgUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(32),
                // margin: const EdgeInsets.symmetric(horizontal: 80),
                child: TextButton(
                  onPressed: () {
                    // theme.remove(theme.firstWhere(
                    //     (element) => element.id == wallpaperData.id));
                    wallpaperState.deleteWall(wallpaperData);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Delete",
                    style: TextStyle(
                        color: UnSplashTheme.bluishShade,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        );
      },
    );
  }
}


// child: Scaffold(
//           backgroundColor: Colors.transparent,
//           resizeToAvoidBottomInset: false,
//           extendBodyBehindAppBar: true,
//           extendBody: true,
//           appBar: AppBar(
//             systemOverlayStyle: SystemUiOverlayStyle.light,
//             leading: IconButton(
//                 onPressed: () => Navigator.pop(context),
//                 icon: Icon(EvaIcons.close)),
//             title: Text(
//               "Preview",
//               style: TextStyle(fontWeight: FontWeight.w800),
//             ),
//             centerTitle: true,
//             backgroundColor: Colors.transparent,
//           ),
//           body: Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               child: Image.network(
//                 imgUrl,
//                 fit: BoxFit.fill,
//               )),
//           bottomNavigationBar: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                   padding: const EdgeInsets.all(32),
//                   // margin: const EdgeInsets.symmetric(horizontal: 80),
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Apply wallpaper",
//                       style: TextStyle(
//                           color: UnSplashTheme.bluishShade,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   )),
//               Container(
//                   padding: const EdgeInsets.all(32),
//                   // margin: const EdgeInsets.symmetric(horizontal: 80),
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Delete",
//                       style: TextStyle(
//                           color: UnSplashTheme.bluishShade,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   )),
//             ],
//           )),