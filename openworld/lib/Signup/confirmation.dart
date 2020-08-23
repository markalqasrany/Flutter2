import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.email,
               color: Colors.white, 
               size: 30.0,
            ),
          ),
          Container(
          child: Center(
            child: Text('Please confirm your email!', style: TextStyle(fontSize: 28.0, color: Colors.white,), ),
          ),
          ),
        ],
      ),
    );
  }
}
