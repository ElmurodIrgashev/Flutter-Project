import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignUp(),
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.only(left: 25.0, top: 45.0),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: <Widget>[
                    _getHeader(),
                    _getInputs(),
                    //SizedBox(height: 15),
                    _getSignUp(),
                    _getSignIn(context),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

_getHeader() {
  return Expanded(
    flex: 3,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Create Account',
        style: TextStyle(
          color: Colors.white,
          fontSize: 37,
        ),
      ),
    ),
  );
}

_getInputs() {
  return Expanded(
    flex: 4,
    child: Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

_getSignUp() {
  return Expanded(
    flex: 2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[800],
          radius: 40,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

_getSignIn(context) {
  return Expanded(
    flex: 1,
    child: Row(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    ),
  );
}

class BackgroundSignUp extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.grey[100];
    canvas.drawPath(mainBackground, paint);

    // Blue Color
    Path blueWave = Path();
    blueWave.lineTo(sw, 0);
    blueWave.lineTo(sw, sh * 0.65);
    blueWave.cubicTo(sw * 0.8, sh * 0.8, sw * 0.5, sh * 0.8, sw * 0.45, sh);
    blueWave.lineTo(0, sh);
    blueWave.close();
    paint.color = Colors.lightBlue[300];
    canvas.drawPath(blueWave, paint);

    // Grey Color
    Path greyPath = Path();
    greyPath.lineTo(sw, 0);
    greyPath.lineTo(sw, sh * 0.3);
    greyPath.cubicTo(sw * 0.65, sh * 0.45, sw * 0.25, sh * 0.35, 0, sh * 0.5);
    greyPath.close();
    paint.color = Colors.grey[800];
    canvas.drawPath(greyPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
