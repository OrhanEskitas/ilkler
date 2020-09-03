import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'İlk Uygulamam',
    home: AnaSayfa(),
  ));
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ilk Uygulamam", style: TextStyle(color:Colors.white),),
      ),
      body: Container(
          width: 400,
          height: 400,
          color : Colors.green,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("Orhan", style: TextStyle(fontSize: 20.0, color:Colors.white)),
              Text("Eskitaş", style: TextStyle(fontSize: 20.0, color:Colors.white)),
              Text("Orhan", style: TextStyle(fontSize: 20.0, color:Colors.white)),
              Text("Eskitaş", style: TextStyle(fontSize: 20.0, color:Colors.white)),
            ],
          )

      ),
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.plus_one),),

      drawer: Drawer(
        child: ListView (
          children: <Widget>[
            DrawerHeader (

              decoration: BoxDecoration(
                  gradient: LinearGradient (colors: <Color>[
                    Colors.deepOrange,
                    Colors.orangeAccent,
                  ])
              ),
              child:Text("Eskitaş", style: TextStyle(fontSize: 20.0, color:Colors.blue)) ,),

            CustomListTile(Icons.people,"Kişiler",()=>{}),
            CustomListTile(Icons.search,"Aramalar",()=>{}),
            CustomListTile(Icons.keyboard,"Bize Yazın",()=>{}),
            CustomListTile(Icons.people,"Kişiler",()=>{}),
          ],
        ),


      ),

    );
  }



}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color : Colors.grey))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,

          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                      child: Text(text, style: TextStyle(fontSize: 16.0, color:Colors.blue)),
                    ),
                  ],
                ),

                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }



}