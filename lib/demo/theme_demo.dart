import 'package:flutter/material.dart';

class ThemeColorDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ThemeColorChangeDemo(),
      ),
    );
  }
}

class ThemeColorChangeDemo extends StatefulWidget {
  ThemeColorChangeDemo({Key key}) : super(key: key);

  _ThemeColorChangeDemoState createState() => _ThemeColorChangeDemoState();
}

class _ThemeColorChangeDemoState extends State<ThemeColorChangeDemo> {
  
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
        primarySwatch: _themeColor,
        iconTheme: IconThemeData(color: _themeColor),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('主题测试'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text('颜色跟随主题')
              ],
            ),
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(
                  color: Colors.black
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text('颜色固定黑色')
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.palette),
          onPressed: () => {
            setState(() => {
              _themeColor = _themeColor == Colors.teal ? Colors.blue : Colors.teal
            }
          )},
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  final String title;
  final Color color;

  NavBar({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        constraints: BoxConstraints(minHeight: 52.0, minWidth: double.infinity),
        decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 3),
              blurRadius: 3,
            )
          ],
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black,
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}

class ColorDemo extends StatelessWidget {
  const ColorDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NavBar(
              color: Colors.blue,
              title: '标题',
            ),
            SizedBox(
              height: 32.0,
            ),
            NavBar(
              color: Colors.white,
              title: '标题',
            ),
          ],
        ),
      ),
    );
  }
}
