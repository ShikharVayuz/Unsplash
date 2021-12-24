import 'package:flutter/material.dart';
import 'package:paralax/paralax.dart';
import 'package:unsplash/models/wallpaper.dart';
import 'package:unsplash/pages/image_popper_page.dart';

class CustomCardWidget extends StatefulWidget {
  final String url;
  final bool parallax;
  final WallpaperData walls;
  final VoidCallback onTap;
  // Decided to apply parallax to grid view only
  CustomCardWidget(
      {Key? key,
      required this.url,
      required this.parallax,
      required this.walls,
      required this.onTap})
      : super(key: key);

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ImagePop(
                    imgUrl: widget.url,
                    wallpaperData: widget.walls,
                    onDelete: widget.onTap,
                  ))),
      child: Container(
        width: 150,
        height: 220,
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          margin: const EdgeInsets.only(top: 15, right: 15),
          width: 150,
          height: 220,
          decoration: BoxDecoration(
            // color: Colors.blue[600],
            image: !widget.parallax
                ? DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(widget.url))
                : null,
            borderRadius: BorderRadius.circular(15),
          ),
          child: widget.parallax
              ? ParalaxContainer(
                  imageUrl: widget.url,
                  type: ParalaxType.NETWORK,
                  aspectRatio: 150 / 220,
                )
              : null,
        ),
      ),
    );
  }
}

//  Color Tone Box Widget

class ColorToneBox extends StatelessWidget {
  final Color color;
  final String? title;

  const ColorToneBox({required this.color, this.title});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      margin: const EdgeInsets.only(top: 8, bottom: 15, right: 15),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            constraints: BoxConstraints.tight(Size(50, 50)),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }
}
