import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is First Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            var message = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SecondPage('you have got message!');
                },
                fullscreenDialog: true,
              ),
            );
            print(message);
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}
