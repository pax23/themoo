import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //the first card with pictures
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
          //horizontal scroll buttons
          SizedBox(
            height: 115, // card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 0.7),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                return Transform.scale(
                  scale: i == _index ? 1 : 0.9,
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Card ${i + 1}",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

        ],

      ),
    );
  }
}