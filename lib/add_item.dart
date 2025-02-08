import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Container(
          child: Row(children: [

          ],),
        ),
      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.maxFinite,
          height: double.maxFinite,
          color: Color(0xFF2A3644),
          child: Column(
            children: [

              Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(
                        "Title",
                      style: TextStyle(color: Colors.white),
                    ),

                    TextField(
                      decoration: InputDecoration(
                        hintText: Constants().descriptionTitle,
                      ),
                    ),

                    Text(
                        Constants().description,
                        style: TextStyle(color: Colors.white),
                    ),

                    TextField(
                      decoration: InputDecoration(
                        hintText: Constants().enterDescription
                      ),
                    )

                  ],
                ),
              ),

              TextButton(onPressed: (){}, child: Text("")),

            ],
          ),

        )
      ),
    );
  }
}

