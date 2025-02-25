import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';
import 'package:todo/screens/dashboard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  child: Text(
                    CustomString.login,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                      CustomString.enter_details,
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: CustomString.User_Name,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: CustomString.Password,
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),

                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement( MaterialPageRoute( builder: (BuildContext context) => Dashboard()) );
                      },
                      child: Text(
                          CustomString.login,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(CustomString.Forgot_password),
                )
                // Text(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


