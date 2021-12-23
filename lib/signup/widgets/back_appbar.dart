import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar backAppBar({
  required BuildContext context,
  required bool skip,
  required String title,
  required bool search,
}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: Icon(CupertinoIcons.back),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      if (skip) ...[
        TextButton(
            onPressed: () {
              //Navigate to next Screen
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ))
      ],
      if (search) ...[
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search))
      ]
    ],
  );
}
