import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'استغفار'),
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
      if(_counter<33)
      _counter++;
      else _counter=0;
    });
  }
  void _resetCounter(){
    setState((){
        _counter=0;
  });}

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
              'أستغفر الله ', style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              '$_counter /33',
              style: TextStyle(fontSize: 80),
            ),
            SizedBox(
              height: 100,
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:_resetCounter,
        child: Text('Reset'),
      )
    );
  }
}
