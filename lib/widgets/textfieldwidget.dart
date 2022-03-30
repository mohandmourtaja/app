import 'package:flutter/material.dart';

class textfieldwidget extends StatelessWidget {
  String hint;
  var icon;
  bool isobscure;
  TextEditingController controller;
  textfieldwidget(this.hint, this.icon, this.controller, this.isobscure);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextField(
        controller: controller,
        obscureText: isobscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff80e1d1), width: 2.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 16.0,
              color: Color(0xff80e1d1).withOpacity(0.7),
              fontWeight: FontWeight.w600),
          prefixIcon: Icon(
            icon,
            color: Color(0xff80e1d1),
          ),
        ),
      ),
    );
  }
}
