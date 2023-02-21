import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bottom.dart';
import '../components/input.dart';

class LoginUi extends StatefulWidget {
  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  var nameControll = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  var email = TextEditingController();
  var passwrd2 = TextEditingController();
  bool IsPassword=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                alignment: AlignmentDirectional.center,
                color: Color(0xff4B62FE),
                width: double.infinity,
                height: 200,
                child: Text(
                  'Resgister',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Input(
              hinetext: 'Enter your Name',
              prefix: Icons.people,
              isPassword: false,
              textname: 'Full Name',
              con: nameControll,
            ),
            Input(
              hinetext: 'Enter your Email',
              prefix: Icons.email,
              textname: 'Email',
              isPassword: false,
              con: email,
            ),
            Input(
              hinetext: 'Enter your Phone',
              prefix: Icons.phone,
              isPassword: false,
              textname: 'Phone',
              con: phone,
            ),
            Input(
              hinetext: 'Enter your Password',
              prefix: Icons.lock,
              textname: 'Password',
              suffix: IsPassword ? Icons.visibility : Icons.visibility_off,
              isPassword: IsPassword,
              con: password,
              onpreeed: (){
                setState(() {
                  IsPassword =!IsPassword;
                });
              },
            ),
            Input(
              hinetext: 'Enter your Password',
              prefix: Icons.lock,
              textname: 'Confirm Password',
              suffix: IsPassword ? Icons.visibility : Icons.visibility_off,
              isPassword: IsPassword,
              con: passwrd2,
                onpreeed: (){
                  setState(() {
                    IsPassword =!IsPassword;
                  });
                }
            ),
            SizedBox(
              height: 20,
            ),
            Bottom(
              name: 'Register',
            ),
            SizedBox(
              height: 30,
            ),
            Bottom(
              onpreeed: () {},
              name: 'Login',
              color: Colors.white,
              Textcolor: Color(0xff4B62FE),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2);
    path.cubicTo(size.width / 4, 3 * (size.height / 2), 3 * (size.width / 4),
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);

    //path.quadraticBezierTo(w * 0.5, h - 100, w, h);
    path.close();

    return path;
  }

  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
