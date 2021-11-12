import 'package:flutter/material.dart';
import 'package:login_page/Check_email.dart';
import 'package:login_page/main.dart';

class NewPasswordPage extends StatefulWidget {
  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
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
                padding: const EdgeInsets.only(left: 25.0, top: 45.0),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Center(
                child: Column(
                  children: <Widget>[
                    _getHeader(),
                    _getInputs(),
                    Expanded(
                      flex: 0,
                      child: Container(
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
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
                            'Reset Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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

_getHeader() {
  return Expanded(
    flex: 2,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Create new password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    ),
  );
}

_getInputs() {
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
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text('Must be at least 8 characters.'),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            labelText: 'Confirm Password',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text('Both password must match.'),
      ],
    ),
  );
}
