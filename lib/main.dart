import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.white
          ),
        )
      ),
      home: new MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                )
              ),
              padding: EdgeInsets.all(42.0)
            ),
            Container(
              padding: EdgeInsets.only(left: 42.0, right: 42.0, top: 20.0, bottom: 20.0),
              margin: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                color: Colors.grey[300]
              ),
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1
              )
            )
          ],
        ),
      ),
      floatingActionButton:Theme(
        data: new ThemeData(
          accentColor: Colors.red,
        ),
        child: new FloatingActionButton(
          onPressed: () => _incrementCounter(),
          tooltip: 'Increment',
          foregroundColor: Colors.white, // Colors.white,
          child: new Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
