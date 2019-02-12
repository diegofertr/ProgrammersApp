import 'package:flutter/material.dart';
import 'programmer_item.dart';
import 'programmer_no_item.dart';

class ProgrammersList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(
        top: 50.0
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ProgrammerItem('Amanda Murphy', 'Experience: 04 years', 'assets/img/Lorena.png'),
          ProgrammerNoItem('Grace Hartzel', 'Experience: 15 years', 'assets/img/Maria.png'),
          ProgrammerItem('Bernard Hadid', 'Experience: 10 years', 'assets/img/Nico.png'),
          ProgrammerNoItem('Adrian Barrada', 'Experience: 20 years', 'assets/img/Adrian.png'),
          ProgrammerItem('Josué Yohida', 'Experience: 01 years', 'assets/img/Josue.png'),
          ProgrammerNoItem('Grace Hartzel', 'Experience: 15 years', 'assets/img/Maria.png'),
          ProgrammerItem('Bernard Hadid', 'Experience: 10 years', 'assets/img/Nico.png'),
          ProgrammerItem('Josué Yohida', 'Experience: 01 years', 'assets/img/Josue.png'),
        ],
      ),
    );
  }
}