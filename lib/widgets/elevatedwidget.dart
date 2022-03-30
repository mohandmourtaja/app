import 'package:flutter/material.dart';

class elevatedwidget extends StatelessWidget {
  String lable;
  elevatedwidget(this.lable);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      height: 40,
      width: MediaQuery.of(context).size.width - 40,
      child: ElevatedButton(
        onPressed: () {
          print('sorry not complete ');
        },
        child: Text(
          '$lable',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            primary: Color(0xff80E1D1).withOpacity(0.8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
      ),
    );
  }
}
