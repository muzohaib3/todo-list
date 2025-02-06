import 'package:flutter/material.dart';
import 'package:todolist/utils/constants.dart';
import 'package:todolist/dashboard.dart';


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
                      child: Image.asset('assets/images/account.png'),
                    ),

                    //Field 1

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                          onChanged: (text){
                            email = text;
                            print("onChanged: email >> $email");
                          },
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Enter email",
                            fillColor: Colors.white70,
                          )
                      ),
                    ),

                    //Field 2

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (text){
                          password = text;
                          print("onChanged: password >> $password");
                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Enter password",
                          fillColor: Colors.white70,
                        ),
                      ),
                    ),

                    //Button

                    Container(

                      alignment:Alignment.bottomCenter,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.amber, // Set the color within the decoration
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10.0),
                      ),


                      child: TextButton(
                        onPressed: () async{

                          if(email == "abc@gmail.com" && password == "abc123"){
                            print("email and password $email and $password");
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text("wrong password and email"),
                            ));
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
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
