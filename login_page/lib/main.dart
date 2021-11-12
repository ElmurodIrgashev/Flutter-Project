import 'package:flutter/material.dart';
import 'package:login_page/Check_email.dart';
import 'package:login_page/forget_password.dart';
import 'sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      //home: CheckEmail(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignIn(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  _getHeader(),
                  _getInputs(),
                  _getSignIn(),
                  _getBottomToolBar(context),
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
        'Welcome',
        style: TextStyle(
          fontSize: 37,
          color: Colors.white,
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
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
}

_getSignIn() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Sign In',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey[800],
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}

_getBottomToolBar(context) {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
          },
          child: Text(
            'Sign up',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPassword()));
          },
          child: Text(
            'Forget Password',
            style: TextStyle(
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

class BackgroundSignIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var w = size.width;
    var h = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, w, h));
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground, paint);

    //Blue color

    Path blueWave = Path();
    blueWave.lineTo(w, 0);
    blueWave.lineTo(w, h * 0.5);
    blueWave.quadraticBezierTo(w * 0.5, h * 0.45, w * 0.2, 0);
    blueWave.close();
    paint.color = Colors.blue.shade300;
    canvas.drawPath(blueWave, paint);

    //Orange Color

    Path orangeWave =Path();
    orangeWave.lineTo(w * 0.7, 0);
    orangeWave.cubicTo(w * 0.19, h * 0.79, w * 0.2, h * 0.47, w * -1.0, h * 0.39);
    orangeWave.quadraticBezierTo(w * 0, h * 0.7, 0, h * 0.3);
    orangeWave.close();
    paint.color = Colors.orange.shade300;
    canvas.drawPath(orangeWave, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}



//Grey Color
//
//     Path greyWave = Path();
//     greyWave.lineTo(sw, 0);
//     greyWave.lineTo(sw, sh * 0.1);
//     greyWave.cubicTo(
//         sw * 0.9, sh * 0.1, sw * 0.6, sh * 0.15, sh * 0.26, sh * 0.3);
//     greyWave.cubicTo(sw * 0.52, sh * 0.52, sw * 0.05, sh * 0.45, 0, sh * 0.4);
//     greyWave.close();
//     paint.color = Colors.grey[800];
//     canvas.drawPath(greyWave, paint);
//
//     //Orange Color
//
//     Path yellowWave = Path();
//     yellowWave.lineTo(sw * 0.7, 0);
//     yellowWave.cubicTo(
//         sw * 0.6, sh * 0.5, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
//     yellowWave.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
//     yellowWave.close();
//     paint.color = Colors.orange[300];
//     canvas.drawPath(yellowWave, paint);






// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//       //home: SingUpPage(),
//     );
//   }
// }
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomPaint(
//         painter: BackgroundSignIn(),
//         child: Stack(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 35),
//               child: Column(
//                 children: <Widget>[
//                   _getHeader(),
//                   _getInputs(),
//                   _getSignIn(),
//                   _getBottomToolBar(context),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// _getHeader() {
//   return Expanded(
//     flex: 3,
//     child: Container(
//       alignment: Alignment.bottomLeft,
//       child: Text(
//         'Welcome',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 37,
//         ),
//       ),
//     ),
//   );
// }
//
// _getInputs() {
//   return Expanded(
//     flex: 4,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: <Widget>[
//         TextField(
//           decoration: InputDecoration(
//             labelText: 'Email',
//           ),
//         ),
//         SizedBox(height: 15),
//         TextField(
//           decoration: InputDecoration(
//             labelText: 'Password',
//           ),
//         ),
//         SizedBox(height: 15),
//       ],
//     ),
//   );
// }
//
// _getSignIn() {
//   return Expanded(
//     flex: 1,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Text(
//           'Sign In',
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         CircleAvatar(
//           backgroundColor: Colors.grey[800],
//           radius: 40,
//           child: Icon(
//             Icons.arrow_forward_ios,
//             color: Colors.white,
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
// _getBottomToolBar(context) {
//   return Expanded(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         GestureDetector(
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => SignUpPage()));
//           },
//           child: Text(
//             'Sign up',
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w500,
//               decoration: TextDecoration.underline,
//             ),
//           ),
//         ),
//         Text(
//           'Forget Password',
//           style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w500,
//             decoration: TextDecoration.underline,
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
// class BackgroundSignIn extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var sw = size.width;
//     var sh = size.height;
//     var paint = Paint();
//
//     Path mainBackground = Path();
//     mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
//     paint.color = Colors.grey.shade100;
//     canvas.drawPath(mainBackground, paint);
//
//     //Blue color
//
//     Path blueWave = Path();
//     blueWave.lineTo(sw, 0);
//     blueWave.lineTo(sw, sh * 0.5);
//     blueWave.quadraticBezierTo(sw * 0.5, sh * 0.45, sw * 0.2, 0);
//     blueWave.close();
//     paint.color = Colors.blue.shade300;
//     canvas.drawPath(blueWave, paint);
//
//     //Grey Color
//
//     Path greyWave = Path();
//     greyWave.lineTo(sw, 0);
//     greyWave.lineTo(sw, sh * 0.1);
//     greyWave.cubicTo(
//         sw * 0.9, sh * 0.1, sw * 0.6, sh * 0.15, sh * 0.26, sh * 0.3);
//     greyWave.cubicTo(sw * 0.52, sh * 0.52, sw * 0.05, sh * 0.45, 0, sh * 0.4);
//     greyWave.close();
//     paint.color = Colors.grey[800];
//     canvas.drawPath(greyWave, paint);
//
//     //Orange Color
//
//     Path yellowWave = Path();
//     yellowWave.lineTo(sw * 0.7, 0);
//     yellowWave.cubicTo(
//         sw * 0.6, sh * 0.5, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
//     yellowWave.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
//     yellowWave.close();
//     paint.color = Colors.orange[300];
//     canvas.drawPath(yellowWave, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return oldDelegate != this;
//   }
// }
