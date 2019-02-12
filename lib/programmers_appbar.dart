import 'package:flutter/material.dart';

class ProgrammersAppbar extends StatelessWidget {

  String title = 'Programmers';

  ProgrammersAppbar(this.title);

  @override
  Widget build(BuildContext context) {

    title = title.toUpperCase();

    final iconBar = Container(
      height: 80.0,
      padding: EdgeInsets.only(
        top: 38.0,
        left: 20.0
      ),
      child: InkWell(
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white
            )
          ],
        ),
      ),
    );

    final titleBar = Container(
      height: 80.0,
      padding: EdgeInsets.only(
        top: 24.0,
        right: 10.0
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )
        ),
      ),
    );

    final imageBar = Container(
      height: 86.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/AppBar.png'),
          fit: BoxFit.fill
        )
      ),
    );

    return Stack(
      children: <Widget>[
        imageBar,
        titleBar,
        iconBar
      ],
    );
  }
}