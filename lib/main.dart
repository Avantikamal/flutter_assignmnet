import 'package:flutter/material.dart';
import 'screen_1.dart';
import 'screen_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),

    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 2,
       child: Scaffold(

      appBar: AppBar(
        title: Text('Navigation Bar'),
        bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text('screen 1'),
              ),
              Tab(
                child: Text('screen 2'),
              )

            ]),
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Screens'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Screen 1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){

                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Screen_1()));
                Navigator.pop(context);
              },

            ),
            ListTile(
              title: Text('Screen 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){

                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Screen_2()));

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: TabBarView(
        children: <Widget>[
          Screen_1(),
          Screen_2(),
        ],
      ),
    ),);
  }
}

