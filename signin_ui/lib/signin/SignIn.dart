import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  SignInPage createState() => new SignInPage();
}

class SignInPage extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [Color(0xFF0238B7), Color(0xFF0427D5)])),
        child: widgetSignIn(),
      ),
    );
  }

  Widget widgetSignIn() {
    return AnimatedPadding(
        padding: EdgeInsets.only(left: 32.0),
        duration: Duration(seconds: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 120),
            Text(
              'Login',
              textScaleFactor: 3,
              style: TextStyle(
                fontFamily: 'CircularStd-Bold',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Welcome back,',
              textScaleFactor: 1.5,
              style: TextStyle(
                fontFamily: 'CircularStd-Medium',
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.only(right: 32),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,

                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                    fontSize: 12,
                    fontFamily: "CircularStd-Medium",
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Container(
              margin: EdgeInsets.only(right: 32),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: EdgeInsets.only(left: 8),
                  labelText: 'PASSWORD',
                  labelStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: "CircularStd-Medium",
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      child: Icon(
                        (Icons.visibility),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 32,top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "CircularStd-Medium",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: Icon(Icons.arrow_forward,color: Colors.blueAccent,),
                    backgroundColor: Colors.white,
                    elevation: 4.0,
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            SizedBox(height: 48),
            accountWidget(),
          ],
        ));
  }

  Widget accountWidget() {
    return Container(
        margin: EdgeInsets.only(right: 32.0),
        padding: EdgeInsets.only( bottom: 8),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[400],
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Text(
              'Don´t have an account?',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: "CircularStd-Medium",
                  color: Colors.grey),
            ),
            Expanded(child: Container()),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "CircularStd-Medium",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
