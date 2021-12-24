import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash/models/wallpaper_state.dart';

class WallpaperData {
  final String id;
  final String url;
  final String type;
  bool topOftheMonth = false;
  WallpaperData({
    required this.id,
    required this.url,
    required this.type,
    required this.topOftheMonth,
  });
}

class ColorTone {
  final Color color;

  ColorTone(this.color);
}

List<ColorTone> dummyData = [
  ColorTone(Colors.red),
  ColorTone(Colors.blue.shade900),
  ColorTone(Colors.yellow),
  ColorTone(Colors.amber),
  ColorTone(Colors.purple),
  ColorTone(Colors.green),
  ColorTone(Colors.cyan),
];

final wallpaperProvider = Provider<List<WallpaperData>>((ref) {
  return <WallpaperData>[
    WallpaperData(
      id: "1",
      url: "https://images.pexels.com/photos/3052361/pexels-photo-3052361.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "2",
      url: "https://images.pexels.com/photos/2049422/pexels-photo-2049422.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "3",
      url: "https://images.pexels.com/photos/3623207/pexels-photo-3623207.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "4",
      url: "https://images.pexels.com/photos/2781760/pexels-photo-2781760.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "5",
      url: "https://images.pexels.com/photos/691668/pexels-photo-691668.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "6",
      url: "https://images.pexels.com/photos/1496373/pexels-photo-1496373.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "7",
      url: "https://images.pexels.com/photos/3227984/pexels-photo-3227984.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "8",
      url: "https://images.pexels.com/photos/2444429/pexels-photo-2444429.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "9",
      url: "https://images.pexels.com/photos/1261731/pexels-photo-1261731.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "10",
      url: "https://images.pexels.com/photos/1252869/pexels-photo-1252869.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "11",
      url: "https://images.pexels.com/photos/2670898/pexels-photo-2670898.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
    WallpaperData(
      id: "12",
      url: "https://images.pexels.com/photos/2437299/pexels-photo-2437299.jpeg",
      type: "abstract",
      topOftheMonth: false,
    ),
  ];
});

final wallpaperListProvider = StateNotifierProvider((ref) {
  return WallpaperState(dummyData2);
});

List<WallpaperData> dummyData2 = [
  WallpaperData(
    id: "1",
    url: "https://images.pexels.com/photos/3052361/pexels-photo-3052361.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "2",
    url: "https://images.pexels.com/photos/2049422/pexels-photo-2049422.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "3",
    url: "https://images.pexels.com/photos/3623207/pexels-photo-3623207.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "4",
    url: "https://images.pexels.com/photos/2781760/pexels-photo-2781760.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "5",
    url: "https://images.pexels.com/photos/691668/pexels-photo-691668.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "6",
    url: "https://images.pexels.com/photos/1496373/pexels-photo-1496373.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "7",
    url: "https://images.pexels.com/photos/3227984/pexels-photo-3227984.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "8",
    url: "https://images.pexels.com/photos/2444429/pexels-photo-2444429.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "9",
    url: "https://images.pexels.com/photos/1261731/pexels-photo-1261731.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "10",
    url: "https://images.pexels.com/photos/1252869/pexels-photo-1252869.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "11",
    url: "https://images.pexels.com/photos/2670898/pexels-photo-2670898.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
  WallpaperData(
    id: "12",
    url: "https://images.pexels.com/photos/2437299/pexels-photo-2437299.jpeg",
    type: "abstract",
    topOftheMonth: false,
  ),
];

// List<WallpaperData> get items {
//   return [...dummyData2]; // ek copy pass hua hai call by value to be clear
// }
