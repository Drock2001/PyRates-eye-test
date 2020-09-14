//import 'dart:ffi';
//import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_ear_and_eyes/eyetest.dart';
import 'package:test_ear_and_eyes/cataract.dart';
import 'package:screenshots/screenshots.dart';
//import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:test_ear_and_eyes/main.dart';

class eyeresult extends StatefulWidget {
  String result;
  eyeresult({this.result});

  @override
  eyetesttext() {
    print(result);
    var str;
    str = "Vision Aurity: " + eyeresult().result.toString();
    return str;
  }
  cataracttext() {
    var str;
    str = "Cataract percentage: " + PhotoPreviewScreen().cataractper().toString() + "%";
    return str;
  }
  _eyeresultState createState() => _eyeresultState(result);
}

class _eyeresultState extends State<eyeresult> {
  String result;
  _eyeresultState(this.result);
  static GlobalKey previewContainer = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    final config = Config();
    return RepaintBoundary(
      key: previewContainer,
      child: Scaffold(
        appBar: AppBar(title: Text("Eye Results"),),
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
                    "Vision Aurity: " + result,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    eyeresult().cataracttext(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
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
    assert(pngBytes != null);
    final result =
    await _channel.invokeMethod('saveImageToGallery', <String, dynamic> {
      'imageBytes': pngBytes,
      'quality': 80,
      'name': "e_care_eye_report"
    });
    print(result);
  }

  static const MethodChannel _channel =
  const MethodChannel('image_gallery_saver');

  /// save image to Gallery
  /// imageBytes can't null
  static Future saveImage(Uint8List imageBytes, {int quality = 80, String name}) async {
  assert(imageBytes != null);
  final result =
  await _channel.invokeMethod('saveImageToGallery', <String, dynamic> {
  'imageBytes': imageBytes,
  'quality': quality,
  'name': name
  });
  return result;
  }

  /// Save the PNG，JPG，JPEG image or video located at [file] to the local device media gallery.
  static Future saveFile(String file) async {
  assert(file != null);
  final result =
  await _channel.invokeMethod('saveFileToGallery', file);
  return result;
  }

}
