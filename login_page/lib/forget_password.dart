import 'package:flutter/material.dart';
import 'package:login_page/Check_email.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: PasswordBackground(),
        child: Stack(
          children: <Widget>[
            _getArrowBack(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    _getHeader(),
                    //SizedBox(height: 20),
                    _getInfo(),
                    SizedBox(height: 20),
                    _getPassword(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_getArrowBack(context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      padding: const EdgeInsets.only(
        left: 25.0,
        top: 40.0,
      ),
      child: Icon(
        Icons.arrow_back_ios_outlined,
        color: Colors.white,
      ),
    ),
  );
}

_getHeader() {
  return Expanded(
    flex: 2,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Reset Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 37,
        ),
      ),
    ),
  );
}

_getInfo() {
  return Expanded(
    flex: 2,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Enter email associated with your account and we\'ll send an email with instructions to your password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}

_getPassword(context) {
  return Expanded(
    flex: 3,
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            labelText: 'Email address',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 15),
        RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CheckEmail()));
          },
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.orange.shade300,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.orange[300],
          child: Text(
            'Send Instructions',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    ),
  );
}

class PasswordBackground extends CustomPainter {
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
