import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('sample1'),
        ),
        backgroundColor: Colors.pink[200],
      ),
      body: Center(
        child: Image.network('https://media.assettype.com/daily-tribune%2Fimport%2Fwp-content%2Fuploads%2F2023%2F09%2FMaki-PR-Photo.jpg?w=1200&auto=format%2Ccompress&fit=max'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink[200],
        child: Icon(
            Icons.add,
            color: Colors.white,
        ),
      ),
    ),
  ));
}

