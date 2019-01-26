import 'package:flutter/material.dart';
//import 'package:stateful_test/ui/carouselStateless.dart';
import 'package:stateful_test/ui/textStateful.dart';
import 'package:stateful_test/ui/carouselStateful.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: Text("(G)I-dle"),
          backgroundColor: Colors.purple,
        ),
        body: CardIndex(),
      ),
    );
  }
}
