import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red,

      ));



    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Generated App',
      theme: new ThemeData(
        fontFamily: 'Roboto'
      ),
      home: new MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack (  // nesnelerin üst üste binmesi için
            overflow: Overflow.visible, // stack dışına cıkarsa görünsün
            alignment: Alignment.center,
            children: <Widget>[
            Container(
              height: 60.0,
              width: 60.0,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(50.0),
                color: Colors.green
              ),
              child: new Icon(Icons.local_offer, color: Colors.white,),
            ),
            Positioned(   // stack içindekilere yön vermek için
              bottom: 30,
              left : 30,
              child: Container(
               // margin: new EdgeInsets.only(right: 150.0,bottom: 50.0), // alternatif yönlendirme
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.red
                ),
                child: Icon(Icons.home, color: Colors.white,),
              ),
            )
        ],
    ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text('Yeni Uygulama',style: new TextStyle(fontSize: 30.0),),
              )
            ],
          ),

          new Row(
            children: <Widget>[

              Expanded(

                child: Padding(
                  padding: new EdgeInsets.only(left: 20.0, right: 20.0,  top: 70.0),
                  child: new Container(
                    alignment: Alignment.center,
                    height: 70.0,
                    width: 70.0,
                    decoration: new BoxDecoration(
                      color: Colors.red, borderRadius: new BorderRadius.circular(20.0)
                    ),
                    child: new Text('Giriş',style: new TextStyle(fontSize: 20.0,color : Colors.white),),
                  ),
                ),
              )
            ],
          ),

          new Row(
            children: <Widget>[

              Expanded(

                child: Padding(
                  padding: new EdgeInsets.only(left: 20.0, right: 5.0,  top: 10.0),

                  child: new Container(
                    alignment: Alignment.center,
                    height: 70.0,
                    width: 70.0,
                    decoration: new BoxDecoration(
                        color: Colors.blue, borderRadius: new BorderRadius.circular(20.0)
                    ),
                    child: new Text('Giriş',style: new TextStyle(fontSize: 20.0,color : Colors.white),),
                  ),
                ),
              ),
              Expanded(

                child: Padding(
                  padding: new EdgeInsets.only(left: 5.0, right: 20.0,  top: 10.0),

                  child: new Container(
                    alignment: Alignment.center,
                    height: 70.0,
                    width: 70.0,
                    decoration: new BoxDecoration(
                        color: Colors.blue, borderRadius: new BorderRadius.circular(20.0)
                    ),
                    child: new Text('Giriş',style: new TextStyle(fontSize: 20.0,color : Colors.white),),
                  ),
                ),
              )
            ],
          )

        ]
      ),

    ),
    );
  }
}
