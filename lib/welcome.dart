import 'package:flutter/material.dart';
import 'login.dart';
import 'Register.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Buy And Sell',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    'https://i.ytimg.com/vi/kJN6gQOJ7-Y/maxresdefault.jpg',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'WELCOME BACK',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  child: MaterialButton(
                    color: Colors.teal,
                    child: Text('LOGIN'),
                    onPressed: () {
                      setState(() {
                        loginpage();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  child: MaterialButton(
                    color: Colors.teal,
                    child: Text('REGISTER'),
                    onPressed: () {
                      setState(() {
                        registerpage();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
