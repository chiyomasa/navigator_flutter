import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String message;
  SecondPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Second Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, 'from second page');

            //print(message);
          },
          child: Text('Go back to First Page'),
        ),
      ),
    );
  }
}
