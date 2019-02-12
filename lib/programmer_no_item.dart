import 'package:flutter/material.dart';

class ProgrammerNoItem extends StatelessWidget {

  String name = 'Amanda Murphy';
  String experience = 'Experience: 04 years';
  String userImage = 'assets/img/Lorena.png';

  ProgrammerNoItem(this.name, this.experience, this.userImage);

  @override
  Widget build(BuildContext context) {

    String email = name.split(' ')[0].toLowerCase() + '@dev.com';

    final userAvatar = Container(
      margin: EdgeInsets.only(
        top: 15.0,
        bottom: 15.0,
        left: 15.0
      ),
      child: CircleAvatar(
        radius: 35.0,
        backgroundImage: AssetImage(userImage),
      ),
    );

    final userName = Container(
      child: Text(
        name,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final userExperience = Container(
      margin: EdgeInsets.only(
        top: 5.0
      ),
      child: Text(
        experience,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.black45
        ),
      ),
    );

    final userDetail = Container(
      margin: EdgeInsets.only(
        left: 15.0,
        top: 25.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userExperience
        ],
      ),
    );

    final iconMessage = IconButton(
      icon: Icon(
        Icons.mail
      ),
      color: Colors.black87,
      iconSize: 30.0,
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('No existe correo de contacto para ' + name.split(' ')[0]),
          )
        );
      },
    );

    final buttonMail = Container(
      margin: EdgeInsets.only(
        left: 50.0,
        right: 5.0
      ),
      child: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 25.0,
        child: Container(
          child: iconMessage,
        ),
      ),
    );

    return Card(
      child: Row(
        children: <Widget>[
          userAvatar,
          userDetail,
          buttonMail
        ],
      ),
    );
  }
}