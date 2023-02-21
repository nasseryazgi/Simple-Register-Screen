import 'package:acoountui/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( account());
}

class account extends StatelessWidget {
  var nameControll = TextEditingController();
  var phone = TextEditingController();
  var passwort = TextEditingController();
  var email = TextEditingController();
  var passwrd2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        ),
      home:  LoginUi(),
    );
  }
}
