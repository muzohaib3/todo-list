import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Wallet(),
    );
  }
}

class _Wallet extends StatefulWidget {
  const _Wallet({super.key});

  @override
  State<_Wallet> createState() => _WalletState();
}

class _WalletState extends State<_Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: Text(
            "Wallet",
          style: TextStyle(
              color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(40),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Text(
                    "PKR 86,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Total Wallet Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFDAF4F8),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Pay Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 20),
              width: double.maxFinite,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: Column(
                children: [
                  /// ✅ Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Date",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Transaction",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Balance",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Divider(), // ✅ Line separator

                  /// ✅ Data Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text("18-Oct-24", textAlign: TextAlign.center),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "+234,000",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text("827,000", textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  /// ✅ Statement Details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text("Statement ID"),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text("375199", textAlign: TextAlign.right),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text("Period"),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text("05-Aug to 08-Sep", textAlign: TextAlign.right),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  /// ✅ Download Link
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Download Statement",
                      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

