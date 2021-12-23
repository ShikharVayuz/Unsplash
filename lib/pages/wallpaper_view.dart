import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WallPaperView extends StatelessWidget {
  const WallPaperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Stack(children: [
        Expanded(child: Image.network("src"))
      ],),
    );
  }
}
