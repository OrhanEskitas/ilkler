import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),


      ),
      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(key:null, onPressed:buttonPressed,
                      child:
                      new Text(
                        "Flat Button 2",
                        style: new TextStyle(fontSize:21.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      )
                  ),

                  new FlatButton(key:null, onPressed:buttonPressed,
                      child:
                      new Text(
                        "Flat Button 5",
                        style: new TextStyle(fontSize:34.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto"),
                      )
                  ),

                  new FlatButton(key:null, onPressed:buttonPressed,
                      child:
                      new Text(
                        "Flat Button 4",
                        style: new TextStyle(fontSize:12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                  )
                ]

            )
          ]

      ),

      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.arrow_drop_down_circle),
          onPressed: fabPressed),
      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            )
          ]

      ),
    );
  }
  void buttonPressed(){}

  void fabPressed() {}

}