import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () => {print('leading')},
        ),
        title: Text('the first app'),
      ),
      body: Center(
          child: Text.rich(TextSpan(text: 'Hi', children: [
        TextSpan(
            text: "there,",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            )),
        TextSpan(text: 'How are you feel today?')
      ]))),
    );
  }
}
