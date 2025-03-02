import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';

class Tracking extends StatelessWidget {
  const Tracking({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Tracking(),
    );
  }
}

class _Tracking extends StatefulWidget {
  const _Tracking({super.key});

  @override
  State<_Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<_Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            CustomString.Tracking,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
        ),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [

              /** Icon **/
              Container(
                height: 200,
                margin: EdgeInsets.only(top: 20),
                child: Image.asset("assets/images/tracking_icon.png"),
              ),

              /** Search bar  **/
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: CustomString.TrackingNumber,
                    contentPadding: EdgeInsets.only(left: 10)
                  ),
                ),
              ),

              /** Button **/
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade900
                ),
                child: Text(
                  textAlign: TextAlign.center,
                    CustomString.Track,
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                      color: Colors.white,
                      fontWeight: FontWeight.w300
                    ),
                ),
              ),

              /** Tracking Number Details **/
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                         child: Text(
                           CustomString.Out_For_Delivery,
                           style: TextStyle(
                             fontFamily: 'Ubuntu',
                               color: Colors.blue.shade900,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          CustomString.Tracking_Info,
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          CustomString.BlueEX_Shipping_Label,
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            CustomString.Order_info_received,
                            style: TextStyle(
                                fontFamily: 'Ubuntu',
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12
                            ))
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child:  Text(
                          "Oct 25th, 2024 ( 09:00 AM ) - Out For Delivery.",
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Oct 23rd, 2024 ( 11:24 PM ) - Shipment is on route to Sialkot.",
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Oct 23rd, 2024 ( 11:24 PM ) - Shipment reached blueEX Karachi Warehouse, Karachi.",
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

