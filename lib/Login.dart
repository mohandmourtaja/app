import 'package:flutter/material.dart';
import 'widgets/imagewidget.dart';
import 'widgets/textfieldwidget.dart';
import 'widgets/elevatedwidget.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
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
                imagewidget('img/login.png'),
                textfieldwidget('EMAIL', Icons.email, controller1, false),
                textfieldwidget('PASSWORD', Icons.lock, controller2, true),
                elevatedwidget('LOGIN'),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Register');
                        },
                        child: Text(
                          'Register',
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
