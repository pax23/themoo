import 'package:flutter/material.dart';
class Shops extends StatefulWidget {
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Shops"),),
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/shops.png") ,
              fit: BoxFit.cover ,
            )
        ) ,


         child: new ListView(
           children: <Widget>[
             Row(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(right:28.0,left: 28.0),
                   child: Container(
                     height:200.0,
                     width: 160.0,
                     child:
                     new Card(
                       elevation: 5,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.only(
                               bottomRight: Radius.circular(10),
                               topRight: Radius.circular(10)),
                           side: BorderSide(width: 5, color: Colors.green)),
                       child: Container(
                         child:
                         new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                       ),
                     ),


                   ),
                 ),
                 Container(
                   height:200.0,
                   width: 160.0,
                   child:
                   new Card(
                     elevation: 5,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(
                             bottomRight: Radius.circular(10),
                             topRight: Radius.circular(10)),
                         side: BorderSide(width: 5, color: Colors.green)),
                     child: Container(
                       child:
                       new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                   ),


                 ),
               ],
             ),
             Row(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(right:28.0,left: 28.0),
                   child: Container(
                     height:200.0,
                     width: 160.0,
                     child:
                     new Card(
                       elevation: 5,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.only(
                               bottomRight: Radius.circular(10),
                               topRight: Radius.circular(10)),
                           side: BorderSide(width: 5, color: Colors.green)),
                       child: Container(
                         child:
                         new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                       ),
                     ),


                   ),
                 ),
                 Container(
                   height:200.0,
                   width: 160.0,
                   child:
                   new Card(
                     elevation: 5,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(
                             bottomRight: Radius.circular(10),
                             topRight: Radius.circular(10)),
                         side: BorderSide(width: 5, color: Colors.green)),
                     child: Container(
                       child:
                       new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                   ),


                 ),
               ],
             ),
             Row(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(right:28.0,left: 28.0),
                   child: Container(
                     height:200.0,
                     width: 160.0,
                     child:
                     new Card(
                       elevation: 5,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.only(
                               bottomRight: Radius.circular(10),
                               topRight: Radius.circular(10)),
                           side: BorderSide(width: 5, color: Colors.green)),
                       child: Container(
                         child:
                         new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                       ),
                     ),


                   ),
                 ),
                 Container(
                   height:200.0,
                   width: 160.0,
                   child:
                   new Card(
                     elevation: 5,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(
                             bottomRight: Radius.circular(10),
                             topRight: Radius.circular(10)),
                         side: BorderSide(width: 5, color: Colors.green)),
                     child: Container(
                       child:
                       new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                   ),


                 ),
               ],
             ),
             Row(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(right:28.0,left: 28.0),
                   child: Container(
                     height:200.0,
                     width: 160.0,
                     child:
                     new Card(
                       elevation: 5,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.only(
                               bottomRight: Radius.circular(10),
                               topRight: Radius.circular(10)),
                           side: BorderSide(width: 5, color: Colors.green)),
                       child: Container(
                         child:
                         new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                       ),
                     ),


                   ),
                 ),
                 Container(
                   height:200.0,
                   width: 160.0,
                   child:
                   new Card(
                     elevation: 5,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(
                             bottomRight: Radius.circular(10),
                             topRight: Radius.circular(10)),
                         side: BorderSide(width: 5, color: Colors.green)),
                     child: Container(
                       child:
                       new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                   ),


                 ),
               ],
             ),


           ],
         ),


      )

    );
  }
}
