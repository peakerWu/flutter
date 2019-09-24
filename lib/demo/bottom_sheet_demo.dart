import 'package:flutter/material.dart';

 class BottomSheetDemo extends StatefulWidget {
   BottomSheetDemo({Key key}) : super(key: key);

   _BottomSheetDemoState createState() => _BottomSheetDemoState();
 }

 class _BottomSheetDemoState extends State<BottomSheetDemo> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
   }
 } 