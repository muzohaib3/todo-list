import 'package:flutter/material.dart';

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
      body: Center(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: [

              Container(
                child: TextField(

                ),
              ),

              Container(
                child: TextField(

                ),
              ),

              Container(
                child: TextField(

                ),
              ),

              Container(
                child: TextField(

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

