import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:todo/res/values/color/custom_colors.dart';
import 'package:todo/res/values/string/custom_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "26th Feb,2024",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Ubuntu"
            ),
          ),
        ),
        body: LLDashboard(),
      )
    );
  }
}

class LLDashboard extends StatelessWidget {
  const LLDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _list = ["Shipment Booked", "Shipment Arrived","Service Charges","Cash Deposit"];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),

          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /** Shipment Trend Graphs **/

                Container(
                  width: double.maxFinite,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Shipment Trend",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Ubuntu"
                          ),
                        ),
                        width: double.maxFinite,
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.only(left: 10, top: 10),
                      ),
                    ],
                  ),
                ),

                /** Dashboard Tabs **/

                Container(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    children: List.generate(_list.length, (index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: CustomColors.appContainerColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            _list[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Ubuntu"
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                /** Shipment Statuses **/

                Container(
                  alignment: Alignment.topLeft,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: CustomColors.appContainerColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      TextHeaderCountWidget(header: CustomString.Shipments_Accepted,count: "23,000"),
                      LinearProgressBarIndicator(llCount: 0.5),
                      TextHeaderCountWidget(header: CustomString.Arrived_Shipments,count: "34,000"),
                      LinearProgressBarIndicator(llCount: 0.8,),
                      TextHeaderCountWidget(header: CustomString.Booked_Shipments,count: "34,000"),
                      LinearProgressBarIndicator(llCount: 0.3,),
                      TextHeaderCountWidget(header: CustomString.InTransit_Shipments,count: "34,000"),
                      LinearProgressBarIndicator(llCount: 0.7,),
                      TextHeaderCountWidget(header: CustomString.Shipments_Accepted,count: "23,000"),
                      LinearProgressBarIndicator(llCount: 0.1,),
                      TextHeaderCountWidget(header: CustomString.Arrived_Shipments,count: "34,000"),
                      LinearProgressBarIndicator(llCount: 0.6,),
                      TextHeaderCountWidget(header: CustomString.Booked_Shipments,count: "34,000"),
                      LinearProgressBarIndicator(llCount: 0.5,),
                      TextHeaderCountWidget(header: CustomString.InTransit_Shipments,count: "34,000"),
                      LinearProgressBarIndicator(llCount: 0.2,),

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Container(
                              child: Expanded(
                                  child: Text(
                                      "Total",
                                    style: TextStyle(color: Colors.black, fontFamily: "Ubuntu"),
                                  )
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                                child: Expanded(
                                    child: Text(
                                        "(Infinity %)",
                                      style: TextStyle(color: Colors.black, fontFamily: "Ubuntu"),
                                    ),

                                )
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextHeaderCountWidget extends StatelessWidget {
  final String header;
  final String count;
  const TextHeaderCountWidget({
    super.key,
    required this.header,
    required this.count
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
        width: double.maxFinite,
        child: Row(
          children: [
            Expanded(
                child: Container(
                  child: Text(
                      header,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Ubuntu"
                      )
                  ),
                )
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.topRight,
                  child: Text(
                    count,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Ubuntu"
                    ),
                  ),
                )
            )
          ],
        )
    );
  }
}

class LinearProgressBarIndicator extends StatelessWidget {

  final double llCount;
  const LinearProgressBarIndicator({
    super.key, required this.llCount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 6,
        width: double.maxFinite,
        child: LinearProgressIndicator(
          backgroundColor: Colors.grey.shade300,
          value: llCount.toDouble(),
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue.shade900),

        ),
      )
    );
  }
}

// class GridTabWidget extends StatelessWidget {
//   const GridTabWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }











