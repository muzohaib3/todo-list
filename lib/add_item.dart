import 'package:flutter/material.dart';
import 'package:todolist/utils/constants.dart';

class AddItem extends StatelessWidget {

  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _AddItem(),
    );
  }
}

class _AddItem extends StatefulWidget {
  const _AddItem({super.key});

  @override
  State<_AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<_AddItem> {
  Constants constants = new Constants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2A3644),
        title: Container(
          width: double.maxFinite,
          alignment: Alignment.center,
          child: Row(
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

              ]
          ),
        ),
      ),
      body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            color: Color(0xFF2A3644),
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Container(
                  margin:  EdgeInsets.only(top: 20),
                  child: const Text(
                    "Title",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      )
                  ),
                ),

                Container(
                  margin:  EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter any title",
                        hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.all(10.0)
                    ),
                  ),
                ),

                Container(
                  margin:  EdgeInsets.only(top: 20),
                  child:const Text(
                      "Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),

                Container(
                  height: 200,
                  margin:  EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        hintText: "Enter any description",
                        hintStyle: TextStyle(fontSize: 13),
                        contentPadding: EdgeInsets.all(10.0)
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(10),
                    color: Colors.orange
                  ),
                  width: double.maxFinite,
                  child: TextButton(
                      onPressed: (){},
                      child: Text(
                      constants.addItem,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                  ),
                )

              ],
            ),

          )
      ),
    );
  }
}
