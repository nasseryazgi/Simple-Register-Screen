import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Input extends StatelessWidget {
  String? textname;
  String? hinetext;
  IconData? prefix;
  IconData? suffix;
  bool? isPassword = false;
  Function()? onpreeed;
  var con;
  Input(
      {required this.prefix,
      this.onpreeed,
      required this.hinetext,
      this.suffix,
      required this.isPassword,
      required this.textname,
      required this.con});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        controller: con,
        obscureText: isPassword!,
        style: TextStyle(color: Color(0xff4B62FE)),
        decoration: InputDecoration(
          labelStyle: const TextStyle(
            color: Color(0xff4B62FE),
          ),
          suffixStyle: const TextStyle(color: Color(0xff4B62FE)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff4B62FE)),
          ),
          border: OutlineInputBorder(),
          focusColor: const Color(0xff4B62FE),
          prefixIcon: Icon(
            prefix,
            color: Color(0xff4B62FE),
          ),
          label: Text(textname!),
          hintText: hinetext,
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: onpreeed,
                  icon: Icon(suffix, color: Color(0xff4B62FE)))
              : null,
        ),
      ),
    );
  }
}
