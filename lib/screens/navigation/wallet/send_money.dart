import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';
import 'package:todo/screens/navigation/wallet/send_money_payment.dart';
import 'package:todo/screens/navigation/wallet/wallet.dart';
import 'package:todo/screens/utils/extension_functions.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return _SendMoneyClass();
  }

}

class _SendMoneyClass extends StatefulWidget {
  const _SendMoneyClass({super.key});

  @override
  State<_SendMoneyClass> createState() => _SendMoneyClassState();
}

class _SendMoneyClassState extends State<_SendMoneyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Send Money",
            style: TextStyle(
              fontFamily: "Ubuntu",
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => Wallet()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            right: 20, left: 20
          ),
          child: Column(
            children: [

              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10)
                ),
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
                child: Row(
                  children: [

                    Flexible(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child:Text(
                              CustomString.Add_Beneficiary,
                            style: TextStyle(
                              fontSize: 14
                            ),
                          ),
                        )
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child:Icon(Icons.add_circle_outline),
                        )
                    ),

                  ],
                ),
              ),

              Container(
              margin: EdgeInsets.only(top: 20),
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Beneficiary",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w400
                        )
                    ),
                  ),
                ],
              )
            ),

              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.maxFinite,
                alignment: Alignment.topLeft,
                child: Row(
                  children: [

                    Flexible(
                        flex: 1,
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.circle,
                              size: 50,
                            )
                        )
                    ),

                    Flexible(
                        flex: 1,
                      child: Container(
                        width: double.maxFinite,
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Text(
                                  "ORIO TECHNOLOGIES",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                  "(PRIVATE) LIMITED",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              Text(
                                  "769031120984",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ],
                          ))
                      ),

                    Flexible(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 20),
                          child:  TextButton(onPressed: (){
                            context.pushScreen(SendMoneyPayment());
                          }, child: Image.asset("assets/images/get_into.png"))
                      )

                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.grey.shade400,
                width: double.maxFinite,
                height: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

