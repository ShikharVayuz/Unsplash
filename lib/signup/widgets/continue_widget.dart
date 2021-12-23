import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final Function function;
  const ContinueButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 200,
        height: 40,
        child: FloatingActionButton(
          onPressed: () {
            function();
          },
          isExtended: true,
          //shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(32)),
          child: Text(
            "Continue",
            softWrap: true,
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    );
  }
}
