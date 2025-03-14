import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/screens/home.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        body: Splash(),

    ),
  ));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute( builder: (BuildContext context) => Home() ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.blue.shade900,
        padding: EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child:  Image.asset(
                        "assets/images/app_logo.png",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
            ),
        )
    );
  }
}

