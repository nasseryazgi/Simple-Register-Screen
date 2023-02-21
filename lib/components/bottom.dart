import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  String? name;
  Color? color;
  Color? Textcolor;
  Function()? onpreeed;
  Bottom({required this.name, this.color, this.Textcolor, this.onpreeed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2.0 , color: Color(0xff4B62FE) ),
          color: color == null ? Color(0xff4B62FE) : color,
        ),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: TextButton(
          onPressed: onpreeed,
          child: Text(
            name!,
            style: TextStyle(
                color: color != null ? Textcolor : Colors.white, fontSize: 20),
          ),
        ));
  }
}
