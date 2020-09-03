import 'package:flutter/material.dart';

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

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
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'GeeksforGeeks',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Item 1',
                style: TextStyle(
                  //color: Colors.green,
                  fontSize: 20,
                ),),
            ),
            ListTile(
              title: Text('Item 2',
                style: TextStyle(

                  fontSize: 20,
                ),),
            ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
 

          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
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



    );//Scaffold
  }//Widget
}