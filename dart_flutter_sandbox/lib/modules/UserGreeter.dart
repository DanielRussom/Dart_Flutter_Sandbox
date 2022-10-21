
import 'package:flutter/material.dart';

class UserGreeter extends StatefulWidget {
  const UserGreeter({Key? key}) : super(key: key);

  @override
  State<UserGreeter> createState()  => _UserGreeterState();
}

class _UserGreeterState extends State<UserGreeter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget>[
          TextField(
              key: Key('nameInputBox')
          )
        ]
      )
    );
  }
}