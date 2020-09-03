import 'package:flutter/material.dart';


void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello Appbar"),
        actions: <Widget>[
          new Icon(Icons.account_circle),
          new Icon(Icons.home),
          new Icon(Icons.mail),
          new Icon(Icons.phone),
        ],
      ),
      body: Row(

        children: <Widget>[

          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 100.0,
            height: 450.0,
            alignment: Alignment.topRight,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.yellowAccent,
            ),
          ),

          Container(
            width: 50,
            height: 50,
            color: Colors.yellowAccent,
          ),

          FlatButton(
            child: Text('CANCEL'),
            onPressed: () {
              // TODO: Clear the text fields (101)
            },
          ),

          RaisedButton(
            child: Text('NEXT'),
            color: Colors.yellowAccent,
            onPressed: () {
              // TODO: Show the next page (101)
            },
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex : 0,
          fixedColor: Colors.green,
          items : [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home), ),
            BottomNavigationBarItem(
              title: Text("Search"),
              icon: Icon(Icons.search), ),
            BottomNavigationBarItem(
              title: Text("Profile"),
              icon: Icon(Icons.account_circle), ),
          ],
          onTap: (int indexOfItem){

          }),

      floatingActionButton: FloatingActionButton(

        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
    );//Scaffold
  }//Widget
}