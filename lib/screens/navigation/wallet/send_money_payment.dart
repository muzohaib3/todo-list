import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';
import 'package:todo/screens/navigation/wallet/send_money.dart';


class SendMoneyPayment extends StatelessWidget {
  const SendMoneyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentScreen();
  }
}

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SendMoney()));
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
            "Send Money",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "Ubuntu"
            ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 20),
                child:  Text(
                    CustomString.Current_Balance,
                    style: TextStyle(
                        fontFamily: "Ubuntu"
                    )
                ),
              ),
              Text(
                  "PKR 86,000",
                  style: TextStyle(
                      fontFamily: "Ubuntu"
                  ),
              ),

              Container(
                margin: EdgeInsets.only(top: 50),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 30
                    )
                  ),
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  )
                  ,
                ),
              ),

              Text(
                  CustomString.Enter_Amount,
                style: TextStyle(
                    fontFamily: "Ubuntu"
                ),
              ),

              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200
                ),
                margin: EdgeInsets.only(top:20,right: 20, left: 20),
                width: double.maxFinite,
                child: Text(
                  "Purpose of Payment",
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    color: Colors.black,
                  ),
                ),
              ),

              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  child: Text(
                      "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Ubuntu"
                    ),
                  ),
                  onPressed: (){
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

