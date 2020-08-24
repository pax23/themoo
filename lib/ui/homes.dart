import 'package:com/experiments/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../login.dart';
import 'shops.dart';
import 'package:com/experiments/cards.dart';


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyBottomNavigationBar(),

    );
  }
}


class MyBottomNavigationBar extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


//the one
class _HomeState extends State<MyBottomNavigationBar> {

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  int _index = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("moo"),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          //search bar text
        ],
      ),

     body:
        // _children[_currentIndex],


      ListView(
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
                // search bar removed here

                new TextField(
                  controller: null, style: TextStyle(fontFamily: 'Poppins-Bold',),
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

              ],
            ),
          ),
          //trending buttone
          Padding(
            padding: const EdgeInsets.only(left:20.0,top: 15.0),
            child: new Text('TRENDING',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins-Bold',),
            ),
          ),
          //horizontal scroll buttons
          SizedBox(
            height: 122.0,
           // width: 122.0,// card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 0.7),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                return Transform.scale(
                  scale: i == _index ? 1 : 0.9,
                 // child: Padding(
                  //  padding: const EdgeInsets.only(top:12.0,right: 82.0),
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
                //  ),
                );
              },
            ),
          ),

           // widget to shops ....view all
          new Row(
            children: <Widget>[

         //shops
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: new Text('Shops',style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              //view all
              new GestureDetector(onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Shops()
                    ));
                },
            child: Padding(
              padding: const EdgeInsets.only(left:250.0,top: 15.0),
              child: new Text("Show All",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
            ),
              ),


            ],
          ),
        /// first column with card


          new Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 90.0,
                  child: new Card(
                    child:
                        Container(
                    child: new Column(
                      children: <Widget>[
                        new   Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: new Text("Lavida Ornaments ",style: TextStyle( fontFamily: 'Poppins-Bold',),),
                            ) ,
                            Padding(
                              padding: const EdgeInsets.only(left:90.0),
                              child: new Icon(Icons.arrow_forward_ios),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:0.0,left: 70.0),
                          child: new Text("Ornaments,bracelets,shoes and more"),
                        )

                        //new Column(),

                      ],

                    ),


                        )

                  ),
                ),
              ),


            ],

          ),

          /// second column with card
          new Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 90.0,
                  child: new Card(
                      child:
                      Container(
                        child: new Column(
                          children: <Widget>[
                            new   Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: new Text("Lavida Ornaments "),
                                ) ,
                                Padding(
                                  padding: const EdgeInsets.only(left:90.0),
                                  child: new Icon(Icons.arrow_forward_ios),
                                )
                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:0.0,left: 70.0),
                              child: new Text("Ornaments,bracelets,shoes and more"),
                            )

                            //new Column(),






                          ],

                        ),


                      )

                  ),
                ),
              ),


            ],

          ),

          ///  third column with card
          new Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 90.0,
                  child: new Card(
                      child:
                      Container(
                        child: new Column(
                          children: <Widget>[
                            new   Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: new Text("Lavida Ornaments "),
                                ) ,
                                Padding(
                                  padding: const EdgeInsets.only(left:90.0),
                                  child: new Icon(Icons.arrow_forward_ios),
                                )
                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:0.0,left: 70.0),
                              child: new Text("Ornaments,bracelets,shoes and more"),
                            )

                            //new Column(),






                          ],

                        ),


                      )

                  ),
                ),
              ),


            ],

          ),

          /// fourth column with card
          new Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 90.0,
                  child: new Card(
                      child:
                      Container(
                        child: new Column(
                          children: <Widget>[
                            new   Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: new Text("Lavida Ornaments "),
                                ) ,
                                Padding(
                                  padding: const EdgeInsets.only(left:90.0),
                                  child: new Icon(Icons.arrow_forward_ios),
                                )
                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:0.0,left: 70.0),
                              child: new Text("Ornaments,bracelets,shoes and more"),
                            )

                            //new Column(),






                          ],

                        ),


                      )

                  ),
                ),
              ),


            ],

          ),
          /// fourth column with card
          new Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 90.0,
                  child: new Card(
                      child:
                      Container(
                        child: new Column(
                          children: <Widget>[
                            new   Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: new Text("Shop No:1", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: new Text("Lavida Ornaments "),
                                ) ,
                                Padding(
                                  padding: const EdgeInsets.only(left:90.0),
                                  child: new Icon(Icons.arrow_forward_ios),
                                )
                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:0.0,left: 70.0),
                              child: new Text("Ornaments,bracelets,shoes and more"),
                            )

                            //new Column(),






                          ],

                        ),


                      )

                  ),
                ),
              ),


            ],

          ),



        ],




      ),


      // bottom navigator


        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.green,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.red,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
          child: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            items: [
              new BottomNavigationBarItem(
                icon: new Icon(Icons.add),
                title: new Text("Add"),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.delete),
                title: new Text("Delete"),
              )
            ],
          ),
        )

    );
  }



}