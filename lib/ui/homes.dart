import 'package:com/experiments/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../login.dart';
import 'Home.dart';
import 'shops.dart';
import 'package:com/experiments/cards.dart';


class Home extends StatefulWidget {
  final String text;
  Home({this.text});
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<Home> {
  void initState() {
    super.initState();
  }

  _onTap(int index) {
    setState(() => _index = index);
    /*if (index == 0) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) =>
              new HomeScreen(value: widget.value)));
    } else if (index == 1) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) =>
              new FirstPage(value: widget.value)));
    } else {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) =>
              new HomeScreen(value: widget.value)));
    }*/
  }

  final List<Widget> pages = [
    HomeScreen(),
    Shops(),
    Logins(),

  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _index = 0;

  Widget _myList(int index) => BottomNavigationBar(
    onTap: _onTap,
    currentIndex: index,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(icon: Icon(Icons.shop), title: Text('Shops')),
      BottomNavigationBarItem(icon: Icon(Icons.more), title: Text('Account')),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _myList(_index),
      body: PageStorage(
        child: pages[_index],
        bucket: bucket,
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("demo"),
        ),
        body: Text("FirstPage"));
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    //  home: BottomTab(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}