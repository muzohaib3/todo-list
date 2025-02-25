import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatefulWidget {
  const _HomeScreen({super.key});

  @override
  State<_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(

            children: [

              Container(

                height: 200,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        CustomString.Shipment_Trend,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),
                    )
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    GridViewItem("56","Shipments Booked"),
                    GridViewItem("207","Shipments Accepted"),
                    GridViewItem("255","Service Charges"),
                    GridViewItem("122","Cash Deposit"),
                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    ShipmentStatusLinearProgress(),

                    ShipmentStatusLinearProgress(),

                    ShipmentStatusLinearProgress(),

                    ShipmentStatusLinearProgress(),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  final String itemCount;
  final String itemHeader;

  const GridViewItem(this.itemCount, this.itemHeader);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5), // Color should be inside BoxDecoration
        borderRadius: BorderRadius.circular(15), // Border radius added
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              "assets/images/deliveries.png",
            color: Colors.indigoAccent,
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              itemCount,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                fontSize: 12
              ),
            ),
          ),

          Container(
            child: Text(
              itemHeader,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class ShipmentStatusLinearProgress extends StatefulWidget {
  const ShipmentStatusLinearProgress({super.key});
  @override
  State<ShipmentStatusLinearProgress> createState() => _ShipmentStatusLinearProgressState();
}

class _ShipmentStatusLinearProgressState extends State<ShipmentStatusLinearProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(

      // color: Colors.grey,
      child: Column(
        children: [

          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Text(CustomString.Shipment_Status),

                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  child: LinearProgressIndicator(
                    value: 0.35, // percent filled
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue.shade900),
                    backgroundColor: Color(0xFFF5F5F5),
                  ),
                )
              ],
            ),
          ),
        ],

      ),
    );
  }
}



