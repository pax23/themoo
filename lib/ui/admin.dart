import 'package:flutter/material.dart';

void main() {
  runApp(Admin());
}

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

// class to draw the profile screen
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red//const Color(0xffea5d49),
        ),

        body: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              painter: HeaderCurvedContainer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 35.0,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          // image: DecorationImage(
                          //   image: AssetImage(null),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),

                      Container(
                          child: new Text("Nelson Chamisa",))
                    ],
                  ),

                ),

                Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: Row(
                    children: <Widget>[
                      new Card(
                          child: Padding(
                            padding: const EdgeInsets.all(60.0),

                            child: new Text("Add" "\n" "Product",style: TextStyle(fontWeight: FontWeight.bold),),
                          )
                      ),
                      new Card(
                          child: Padding(
                            padding: const EdgeInsets.all(60.0),
                            child: new Text("My" "\n"  " Products", style: TextStyle(fontWeight: FontWeight.bold),),
                          )
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    new Card(
                        child: Padding(
                          padding: const EdgeInsets.all(60.0),
                          child: new Text("Market", style: TextStyle(fontWeight: FontWeight.bold),),
                        )
                    ),
                    new Card(
                        child: Padding(
                          padding: const EdgeInsets.all(60.0),
                          child: new Text("Profile", style: TextStyle(fontWeight: FontWeight.bold),),
                        )
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// CustomPainter class to for the header curved-container
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blueAccent;//const Color(0xffea5d49);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 250.0, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}