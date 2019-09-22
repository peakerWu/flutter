import 'package:flutter/material.dart';
import 'package:helloworld/demo/view_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listView_demo.dart';
import './demo/basic_demo.dart';
// import './demo/hello_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';

void main() {
  
  runApp(App());
}

// 一个小部件就是一个类
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/form', // 初始路由是一个斜线，
      routes: {
        '/': (contet) => Home(),
        '/about': (context) => Page(title: 'about',),
        '/form': (context) => FormDemo()
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0)
        ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'wulong',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('search button is pressed'),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'search',
              onPressed: () => debugPrint('more_horiz button is pressed'),
            ),
          ],
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            LayoutDemo(),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12,),
            ViewDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}
