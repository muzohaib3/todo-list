import 'package:flutter/material.dart';
import 'package:todolist/add_item.dart';
import 'package:todolist/utils/constants.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {

  Constants constants = new Constants();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          leadingWidth: double.maxFinite,
          backgroundColor: Color(0xFF2A3644),
          title: Row(
            children: [

              IconButton(
                icon: new Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                onPressed: ()
                {
                  Navigator.of(context).pop();
                },
              ),

              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                child:Row(
                  children: [
                    Text(
                      constants.header,
                      style: TextStyle(color: Colors.yellow),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        constants.headerAfter,
                        style: TextStyle(color: Colors.amber),
                      ),
                    )

                  ],
                )
              )

            ],
          ),
        ),

        floatingActionButton: Container(

          padding: EdgeInsets.only(bottom: 80.0),
          child: FloatingActionButton.extended(
            onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>AddItem())
              );
            },
            backgroundColor: Colors.amber,
            elevation: 5,
            icon: Icon(Icons.add),
            label: Text(""),
          ),
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
                            try{

                              return Container(
                                margin: EdgeInsets.only(top: 10),
                                color: Color.fromRGBO(4,131,184, .1),
                                child: ListTile(
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment : CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            constants.items[index],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 15
                                          ),
                                        ),
                                        Text(
                                            constants.descriptions[index],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                            ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: (){},
                                ),
                              );
                            }
                            catch(e, stackTrace){
                              print("error coming ${e.toString()}");
                            }
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