import 'package:flutter/material.dart';

class imagewidget extends StatelessWidget {
  String path;
  imagewidget(this.path);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        margin: EdgeInsets.only(top: 40, bottom: 40),
        child: Center(
          child: Image.asset(path),
        ));
  }
}
