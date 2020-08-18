import 'package:com/experiments/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
// the one
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[

          new Card(
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            //semanticContainer: true,
            child:
            Stack(
              children: <Widget>[
                new Image.asset('assets/images/card_bg.png',
                  fit: BoxFit.fill,
                  width: 1033.0 ,
                  height: 243.0,
                ),
                Container(
                  child:
                  new TextField(
                    controller: null,
                    decoration: new InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                      fillColor: Colors.red,

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red, width: 5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red, width: 3.0),
                      ),
                      hintText: "search",
                    ),
                    //style: TextStyle(fontSize: 20 , color: Colors.redAccent,border )
                  ),

                )
              ],
            ),
          ),
          //trending buttone
          Padding(
            padding: const EdgeInsets.only(left:20.0,top: 15.0),
            child: new Text('TRENDING',style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),


          ///the guys ma1



          Padding(

            padding: const EdgeInsets.only(top:100.0),
            child: new ListView(

              /// spacing: 2.0, // gap between adjacent chips
              // runSpacing: 2.0, // gap between lines
              // direction: Axis.horizontal,
              children: <Widget>[
                new Card(
                  child: Column(

                    children: <Widget>[
                      new Image.asset('assets/images/card_bg.png',
                        fit: BoxFit.fill,
                        width: 133.0 ,
                        height: 43.0,
                      ),
                    ],
                  ),

                ),
                new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.asset('assets/images/card_bg.png',
                        fit: BoxFit.fill,
                        width: 133.0 ,
                        height: 43.0,
                      ),
                    ],
                  ),

                ),
                new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.asset('assets/images/card_bg.png',
                        fit: BoxFit.fill,
                        width: 133.0 ,
                        height: 43.0,
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),



        ],


      ),


    );
  }
}
