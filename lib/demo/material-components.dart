import 'package:flutter/material.dart';
import 'package:helloworld/demo/dialog_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './datetime_demo.dart';
import './dialog_demo.dart';
import './alert_dialog_demo.dart';
import './bottom_sheet_demo.dart';
import './expansion_panel_demo.dart';

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
          title: Text('MaterialComponents'),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              ListItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo()),
              ListItem(title: 'BottomSheetDemo', page: BottomSheetDemo()),
              ListItem(title: 'AlertDialogDemo', page: AlertDialogDemo()),
              ListItem(title: 'SimpleDialogDemo', page: SimpleDialogDemo()),
              ListItem(title: 'DateTimeDemo', page: DateTimeDemo()),
              ListItem(title: 'RadioDemo', page: RadioDemo()),
              ListItem(title: 'Checkbox', page: CheckboxDemo()),
              ListItem(title: 'Form', page: FormDemo())
            ],
          ),
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

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}

class ScaffoldDemo extends StatelessWidget {
  const ScaffoldDemo({Key key}) : super(key: key);

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