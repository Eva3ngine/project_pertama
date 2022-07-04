
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My First Text'),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Hero(
              tag: 'flutter.hero',
              child: FlutterLogo(
                size: 40,
              ),
            ),
            RaisedButton(
              child: Text('Click Me'),
              color: Colors.pink,
              onPressed: () {
                setState( () {
                });
                _counter++;
                print(_counter);
              },
            ),
            RaisedButton(
              child: Text('Move to SecondPage'),
              color: Colors.amber,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'flutter.hero',
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}





