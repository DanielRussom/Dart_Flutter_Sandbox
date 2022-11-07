
import 'package:flutter/material.dart';

class UserGreeter extends StatefulWidget {
  const UserGreeter({Key? key}) : super(key: key);

  @override
  State<UserGreeter> createState()  => _UserGreeterState();
}

class _UserGreeterState extends State<UserGreeter> {

  void _submit(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget>[
          Text('Hello, Test Name!'),
          TextField(
              key: Key('nameInputBox')
          ),
          TextButton(
            key: Key('submitButton'),
            child: Text(
              'Submit'
            ),
            onPressed: _submit,
          )
        ]
      )
    );
  }
}