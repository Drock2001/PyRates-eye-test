import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_ear_and_eyes/eartest.dart';
import 'package:screenshots/screenshots.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class earresult extends StatefulWidget {
  String count;
  earresult({this.count});
  @override
  eartesttext() {
    var str;
    str = "Loudness Test: " + count.toString();
    return str;
  }
  _earresultState createState() => _earresultState(count);
}

class _earresultState extends State<earresult> {
  String count;
  _earresultState(this.count);
  static GlobalKey previewContainer = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    final config = Config();
    return RepaintBoundary(
      key: previewContainer,
      child: Scaffold(
        appBar: AppBar(title: Text("Ear Results"),),
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Loudness Test: " + count,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            takeScreenShot();
            //await screenshot("main.dart", config, 'myscreenshot1');
          },
          child: Icon(Icons.download_outlined),
        ),
      ),
    );
  }
  takeScreenShot() async{
    RenderRepaintBoundary boundary = previewContainer.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage();
    final directory = (await getApplicationDocumentsDirectory()).path;
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();
    print(pngBytes);
    File imgFile =new File('$directory/screenshot.png');
    imgFile.writeAsBytes(pngBytes);
  }
}


