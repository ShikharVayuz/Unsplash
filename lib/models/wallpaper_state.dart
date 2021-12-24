import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash/models/wallpaper.dart';

class WallpaperState extends StateNotifier<List<WallpaperData>> {
  WallpaperState(List<WallpaperData> state) : super(state);

  addWallpaper(WallpaperData wallpaper) {
    state = [...state, wallpaper];
  }

  deleteWall(WallpaperData wallpaper) {
    state =
        state.where((_wallpaper) => _wallpaper.url != wallpaper.url).toList();
  }
}
