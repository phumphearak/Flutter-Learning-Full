import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project_1/screens/test01.dart';

void main() => runApp(MaterialApp(
      home: ExamList(),
    ));

// stless for the generator Staless...
// Home

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 80,
            padding: EdgeInsets.all(30.0),
            color: Colors.red,
            child: Text('Hello Red'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.blue,
            child: Text('Hello Blue'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: const Color.fromARGB(255, 53, 151, 231),
      ),
    );
  }
}

// stful
// Scaffold for generator setting layout....
// Home Screen


