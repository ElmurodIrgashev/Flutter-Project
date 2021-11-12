import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/new_password_page.dart';

class CheckEmail extends StatefulWidget {
  @override
  _CheckEmailState createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundPaint(),
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.only(top: 45, left: 25),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  _getHeader(),
                  _getInfo(),
                  _getButton(context),
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
    flex: 2,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Center(
        child: Text(
          'Check Your Email',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    ),
  );
}

_getInfo() {
  return Expanded(
    flex: 1,
    child: Container(
      child: Center(
        child: Text(
          'We have sent a password recover instructions to your email.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    ),
  );
}

_getButton(context) {
  return Expanded(
    flex: 3,
    child: Column(
      children: [
        RaisedButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.orange.shade300,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {},
          textColor: Colors.white,
          color: Colors.orange[300],
          child: Text(
            'Open email app',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 16),
        RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewPasswordPage()));
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
            'Confirmed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 16),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CheckEmail()));
          },
          child: Text(
            'Resend email',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}

class BackgroundPaint extends CustomPainter {
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
