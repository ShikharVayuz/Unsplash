import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({Key? key}) : super(key: key);

  @override
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  var _isfolded = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        width: _isfolded ? 56 : 200,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          boxShadow: kElevationToShadow[6],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 16),
                child: _isfolded
                    ? null
                    : TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.blue[300]),
                          border: InputBorder.none,
                        ),
                      ),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 400),
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_isfolded ? 32 : 0),
                    topRight: Radius.circular(32),
                    bottomLeft: Radius.circular(_isfolded ? 32 : 0),
                    bottomRight: Radius.circular(32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      _isfolded ? Icons.search : Icons.close,
                      color: Colors.blue[900],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _isfolded = !_isfolded;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
