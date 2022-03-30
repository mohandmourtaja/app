import 'package:flutter/material.dart';
import 'widgets/imagewidget.dart';
import 'widgets/textfieldwidget.dart';
import 'widgets/elevatedwidget.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0XFFFFFFFF),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Expanded(
                child: Column(
              children: [
                imagewidget('img/register.png'),
                textfieldwidget('User Name', Icons.person, controller3, false),
                textfieldwidget('EMAIL', Icons.email, controller4, false),
                textfieldwidget('PASSWORD', Icons.lock, controller5, true),
                elevatedwidget('Register'),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Login');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff80E1D1),
                          ),
                        ))),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
