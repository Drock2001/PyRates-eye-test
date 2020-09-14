import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_ear_and_eyes/eartest.dart';
import 'package:test_ear_and_eyes/eyetest.dart';
import 'package:test_ear_and_eyes/cataract.dart';

class testchooser extends StatefulWidget {
  @override
  _testchooserState createState() => _testchooserState();
}

class _testchooserState extends State<testchooser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Which Test you want to take"),),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoPreviewScreen()));
                    },
                  height: 200,
                  minWidth: 250,
                  color: Colors.orangeAccent,
                  child: Text(
                    "Eye Test",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => eartest()));
                  },
                  height: 200,
                  minWidth: 250,
                  color: Colors.lightBlueAccent,
                  child: Text(
                    "Ear Test",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
