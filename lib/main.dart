import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white70,
    appBar: AppBar(
      title: Text('User Profile'),
      backgroundColor: Colors.pink[200],
      centerTitle: true,
    ),
    body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'Jeffreil Austin R. Belarmino',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'YEAR',
            style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'Third',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'EMAIL',
            style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'jeffreilbelarmino@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          )
        ],
      ),
    ),
  ),
));