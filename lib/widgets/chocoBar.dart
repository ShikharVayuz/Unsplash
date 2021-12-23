import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:flutter/material.dart';
import 'package:unsplash/themes/themedata.dart';

class ChocoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer.clearGlass(
      width: double.infinity,
      height: 60,
      borderRadius: BorderRadius.circular(15),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withOpacity(0.6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autofocus: false,
            textCapitalization: TextCapitalization.none,
            decoration: InputDecoration(
              hintText: 'Find Wallpaper...',
              suffixIcon: Icon(
                EvaIcons.search,
                color: UnSplashTheme.greyishcolor1,
              ),
              hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: UnSplashTheme.greyishcolor2,
                  fontWeight: FontWeight.w500),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
