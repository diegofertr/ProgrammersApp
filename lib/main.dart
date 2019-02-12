import 'package:flutter/material.dart';
import 'programmers_list.dart';
import 'programmers_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programmers',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            ProgrammersList(),
            ProgrammersAppbar('Programmers')
          ],
        )
      ),
    );
  }
}
