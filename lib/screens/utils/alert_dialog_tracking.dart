import 'package:flutter/material.dart';

class AlertDialogTracking extends StatefulWidget {
  const AlertDialogTracking({super.key});

  @override
  State<AlertDialogTracking> createState() => _AlertDialogTrackingState();
}

class _AlertDialogTrackingState extends State<AlertDialogTracking> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
        ),
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),

            Container(
              margin: EdgeInsets.only(top: 20),
              child:  Text(
                "Loading",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Ubuntu"
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}