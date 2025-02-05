import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/dashboard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Home(),
    );
  }
}

class _Home extends StatelessWidget {

  // TextEditingController email = new TextEditingController();
  // TextEditingController password = new TextEditingController();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(

        child: Container(

            width: double.maxFinite,
            height: double.maxFinite,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Color(0xFF2A3644),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              //Image

              Container(
                width: 200,
                height: 200,
                child: Image.network(
                  Constants().loginImage
                )
              ),

              //Field 1

              Container(
                margin: EdgeInsets.only(top: 20),
                color: Color(0xFFF5F5F5),
                padding: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (text){
                    email = text;
                  },
                  maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      border: InputBorder.none,
                    )
                ),
              ),

              //Field 2

              Container(
                margin: EdgeInsets.only(top: 20),
                color: Color(0xFFF5F5F5),
                padding: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (text){
                    password = text;
                  },
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    border: InputBorder.none,
                  ),
                ),
              ),

              //Button

              Container(

                alignment:Alignment.bottomCenter,
                width: double.maxFinite,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.amber, // Set the color within the decoration
                  border: Border.all(color: Colors.transparent),
                ),


                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
                    print("The value = email $email and password $password");
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Login Submit Clicked"),
                    ));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),


              )
            ],
          )
        )
      )
    );
  }
}

