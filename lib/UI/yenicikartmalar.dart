import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


extension yenieklentiler on Widget{
  Widget ortala(){
    return Center(
      child : this,
    );
  }




}



class yenicikartmalar extends StatelessWidget {
  IconData icon;
  String text;


  yenicikartmalar(this.icon,this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5.0,
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),

        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius : BorderRadius.only(topRight:Radius.circular(8.0),bottomRight: Radius.circular(8.0) ),
                color: Colors.white,
              ),
              width: 144,
              child: TextField(

                decoration: InputDecoration(
                  border : InputBorder.none,
                  hintText: text,
                  filled: true,
                ),
              ),
            ),
          ],
        ) ,
      ),
    );
  }

}