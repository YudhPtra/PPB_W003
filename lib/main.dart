import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
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
        title: const Text(
          'My First App',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange[200],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                padding: const EdgeInsets.all(20.0),
                color: Colors.lightBlue[100],
                child: Center(
                  child: Image.network(
                    'https://picsum.photos/200',
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
            padding: const EdgeInsets.all(20.0),
            color: Colors.pink[200],
            child: const Text('What image is that', style: TextStyle(fontSize: 16)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow[200],
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(children: [Icon(Icons.food_bank), Text("Food")]),
                Column(children: [Icon(Icons.landscape), Text("Scenery")]),
                Column(children: [Icon(Icons.people), Text("People")]),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.cyan[100],
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Counter here: $_counter',
                  style: const TextStyle(fontSize: 16),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: IconButton(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.add),
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