import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  // debugPaintSizeEnabled=true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
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
      body: new SingleChildScrollView(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 175.0,
                  height: 175.0,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: AssetImage('nader.jpg'),
                    ),
                    borderRadius: new BorderRadius.all(new Radius.circular(112.50)),
                  ),
                ),
                Text(
                  'Nader Dabit',
                  style: Theme.of(context).textTheme.display2
                ),
                Text(
                  'Developer Advocate, AWS',
                  style: Theme.of(context).textTheme.title
                ),
                Text(
                  'Seattle, WA',
                  style: TextStyle(
                    color: Colors.grey[100],
                  )
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.email),
                      Icon(Icons.donut_large),
                      Icon(Icons.phone),
                      Icon(Icons.web)
                    ],
                  )
                ),
                Text(
                  'Biography',
                  style: Theme.of(context).textTheme.title
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'From Mississippi, specializing in cross-platform application development',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700
                    )
                  ),
                )
              ]
            )
          )
        )
      ),
      floatingActionButton:Theme(
        data: new ThemeData(
          accentColor: Theme.of(context).primaryColor
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
