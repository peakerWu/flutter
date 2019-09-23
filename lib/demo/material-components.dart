import 'package:flutter/material.dart';

class MaterialComponentsDemo extends StatelessWidget {

  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(30.0)
    // ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('FloatingActionDemo'),
          elevation: 0.0,
        ),
        floatingActionButton: _floatingActionButton,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 80.0,
          ),
        ),
      ),
    );
  }
}