import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './UI/yenicikartmalar.dart';
import './youtube.dart';
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
    body: Builder ( builder: (context) {
        return Container(
            width : MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(200.0)),
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  child: Container(
                    width: 400,
                    height: 400,
                  ),
                ),
              ),
            Center(

              child: Container(

                width: 200,
                height: 400,
                //color : Colors.redAccent,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(

                      child: Material(

                        elevation: 10,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('images/flutterLogo.png',width: 50,height: 50,),
                        ),
                      ),
                    ),
                    yenicikartmalar(Icons.verified_user,"Kullanıcı Adı"),
                    yenicikartmalar(Icons.lock,"Şifre"),
                   RaisedButton(
                     onPressed: (){},
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                     child: Text('Giriş'),
                   ),

                   Text("Eskitaş", style: TextStyle(fontSize: 20.0, color:Colors.white)),
                    Text("Orhan", style: TextStyle(fontSize: 20.0, color:Colors.white)),
                    Text("Eskitaş", style: TextStyle(fontSize: 20.0, color:Colors.white)),
                  ],
                )

              ),
            ),
              Text("sdfsdfsdfds").ortala(),  // yeni eklentiler yapılabiliyor
            ],
          ),
        );
      }
    ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        SnackBar yanibar = SnackBar (content:Text('ooo yeni bar hayırlı olsun'));
        Scaffold.of(context).showSnackBar(yanibar);
      },child: Icon(Icons.plus_one),),

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

            CustomListTile(Icons.people,"Kişiler",()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()))}),
            CustomListTile(Icons.search,"Aramalarmı",(){
              showAlertDialog(context);
            }),
            CustomListTile(Icons.keyboard,"Bize Yazın",()=>{}),
            CustomListTile(Icons.people,"bu daha iii",()=>{}),
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

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {Navigator.of(context, rootNavigator: false).pop();},
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed:  () {Navigator.of(context, rootNavigator: true).pop();},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}