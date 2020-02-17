import 'package:flutter/material.dart';
import 'package:flutter_animations/Login_Screen/animate_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final delay = 2000;
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lambo.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: AnimateWidget(
                    delay: delay + 500,
                    offsetY: -20,
                    offsetX: 0,
                    duration: 2000,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 64, color: Colors.white, fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                ),
                AnimateWidget(
                  delay: delay + 1000,
                  offsetY: 1,
                  offsetX: 0,
                  duration: 2000,
                  child: Container(
                    height: screenHeight * 0.75,
                    width: screenWidth,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        boxShadow: [BoxShadow(offset: Offset(0, -12), blurRadius: 48, color: Colors.black.withOpacity(0.5))]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            AnimateWidget(
                              delay: delay + 1500,
                              offsetY: screenHeight * 0.1,
                              offsetX: 0,
                              duration: 2000,
                              child: Container(
                                width: screenWidth * 0.8,
                                child: Text(
                                  'Hello',
                                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            AnimateWidget(
                              delay: delay + 2000,
                              offsetY: screenHeight * 0.2,
                              offsetX: 0,
                              duration: 2000,
                              child: Container(
                                width: screenWidth * 0.8,
                                child: Text(
                                  'Create an account to continue',
                                  style: TextStyle(fontSize: 16, color: Colors.black54),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            AnimateWidget(
                              delay: delay + 2500,
                              offsetY: 0,
                              offsetX: screenWidth * 0.1,
                              duration: 2000,
                              child: Container(
                                width: screenWidth * 0.8,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black87, width: 2),
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            AnimateWidget(
                              delay: delay + 2750,
                              offsetY: 0,
                              offsetX: screenWidth * 0.1,
                              duration: 2000,
                              child: Container(
                                width: screenWidth * 0.8,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black87, width: 2),
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            AnimateWidget(
                              delay: delay + 3000,
                              offsetY: 0,
                              offsetX: screenWidth * 0.1,
                              duration: 2000,
                              child: Container(
                                width: screenWidth * 0.8,
                                child: TextField(
                                  obscureText: _hidePassword,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black87, width: 2),
                                    ),
                                    border: OutlineInputBorder(),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.remove_red_eye, color: _hidePassword ? Colors.grey : Colors.blue),
                                      onPressed: () {
                                        setState(() {
                                          _hidePassword = !_hidePassword;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        AnimateWidget(
                          delay: delay + 3250,
                          offsetY: 0,
                          offsetX: -screenWidth * 0.1,
                          duration: 2000,
                          child: Container(
                            width: screenWidth * 0.8,
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.deepOrange, Colors.red],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        AnimateWidget(
                          delay: delay + 3500,
                          offsetY: 80,
                          offsetX: 0,
                          duration: 2000,
                          child: Container(
                            width: screenWidth * 0.8,
                            height: 25,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Already have an account? SIGN UP',
                                style: TextStyle(fontSize: 16, color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
