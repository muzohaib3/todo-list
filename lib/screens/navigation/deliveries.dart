import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';

class Deliveries extends StatelessWidget {
  const Deliveries({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,

              )
          ),
          title: Text(
              CustomString.Deliveries,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          child: ListViewLayout(),
        ),
      ),
    );
  }
}

class ListViewLayout extends StatelessWidget {
  const ListViewLayout({super.key});

  @override
  Widget build(BuildContext context) {

    bool isChecked = false;
    List<String> listItems = ["Item 1","Item 1","Item 1","Item 1"];
    return Scaffold(

      body: Container(
        color: Colors.white,
        child: Column(

          children: [

            Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Checkbox(
                        value: isChecked, onChanged: (newChanged){print("$newChanged");}
                    ),
                    Text(CustomString.Select_All)
                  ],
                )
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  suffixIcon: Icon(Icons.search, color: Colors.black),
                ),
              ),
            ),

            SizedBox(
              child: Column(
                children: [
                  ListViewItems(title: ""),
                  ListViewItems(title: ""),
                  ListViewItems(title: ""),
                  ListViewItems(title: ""),
                ],
              ),
            )
          ],

        ),
      )
      ,
    );
  }
}

class ListViewItems extends StatelessWidget {
  final String title;
  const ListViewItems({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 10,left: 10,right: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10)
      ),
      child:Container(

        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Flexible(
                flex: 1,
                child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    CustomString.CN,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      CustomString.Customer,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      CustomString.Ship_Date,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      CustomString.Arrival_Date,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
            ],
          ),
            )),

            Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("11222"),
                      Text("muhammad zohaib"),
                      Text("24/02/25"),
                      Text("24/02/25"),
                    ],
                  ),
                )
            ),

            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



