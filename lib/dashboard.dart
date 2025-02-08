import 'package:flutter/material.dart';
import 'package:todo/add_item.dart';
import 'package:todo/constants.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        floatingActionButton: Container(
          padding: EdgeInsets.only(bottom: 100.0),
          child: FloatingActionButton.extended(
            onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>AddItem())
              );
            },
            backgroundColor: Colors.blue,
            elevation: 5,
            icon: Icon(Icons.add),
            label: Text(""),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF2A3644),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          )
        ),
        body: Center(

          child: Container(
            color: Color(0xFF2A3644),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: Constants().items.length,
                        itemBuilder: (BuildContext context, int index){
                          return Container(
                            margin: EdgeInsets.only(top: 10),
                            color: Color.fromRGBO(4,131,184, .1),
                            child: ListTile(
                              title: Text(Constants().items[index]),
                              onTap: (){},
                            ),
                          );
                        }
                    )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
