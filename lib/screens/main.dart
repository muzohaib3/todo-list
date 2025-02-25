import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/screens/home.dart';
import 'package:todo/res/values/string/custom_string.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData( primarySwatch: Colors.indigo),
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
          color: Colors.indigo,
        padding: EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child:  Image.asset(
                        "assets/images/expense.png",
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed:(){},
                        child: const Text(
                          CustomString.blue_ex_consumer,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        )
                    )
                  ],
                ),
            ),

        )

    );
  }
}

