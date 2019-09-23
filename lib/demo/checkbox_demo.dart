import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  CheckboxDemo({Key key}) : super(key: key);

  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {

  bool _checkboxItemA = false;

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
            CheckboxListTile(
              value: _checkboxItemA,
              title: Text('Checkbox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                 _checkboxItemA = value; 
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(
                //   value: _checkboxItemA,
                //   activeColor: Colors.black,
                //   onChanged: (value) { 
                //     setState(() {
                //       _checkboxItemA = value;
                //     });
                //    },
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}

