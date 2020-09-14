import 'package:starflut/starflut.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:camera/camera.dart';
import 'package:test_ear_and_eyes/eyetest.dart';

class PhotoPreviewScreen extends StatefulWidget {
  final String result;
  PhotoPreviewScreen({Key key, this.result}) : super(key: key);

  var n;
  cataractper(){
    var r = new Random();
    var n = r.nextInt(20);
    return n;
  }
  @override
  _PhotoPreviewScreenState createState() => _PhotoPreviewScreenState();
}

class _PhotoPreviewScreenState extends State<PhotoPreviewScreen> {
  var imageFile;
  var cat = PhotoPreviewScreen().result;
  var cat_per;
  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("From where do you want to take the photo?"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text("Gallery"),
                      onTap: () {
                        _openGallery(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        _openCamera(context);
                      },
                    )
                  ],
                ),
              ));
        });
  }

  void _openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cataract Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Text(testCallPython().toString(),),
            _setImageView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSelectionDialog(context);
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }

  Widget _setImageView() {
    if (imageFile != null) {
      return Container(
        child: Column(
          children: [
            Image.file(imageFile, width: 500, height: 500),
            RaisedButton(
              child: Text("Next"),
              onPressed: (){
                //eyeresult().n = PhotoPreviewScreen().n;
                Navigator.push(context, MaterialPageRoute(builder: (context) => eyetest()));
              },
            ),
          ],
        ),
      );
    } else {
      return Text("Please select an image");
    }
  }

  Future<void> testCallPython() async {
    StarCoreFactory starcore = await Starflut.getFactory();
    StarServiceClass Service =
        await starcore.initSimple("test", "123", 0, 0, []);
    await starcore.regMsgCallBackP(
        (int serviceGroupID, int uMsg, Object wParam, Object lParam) async {
      print("$serviceGroupID  $uMsg   $wParam   $lParam");
      return null;
    });
    StarSrvGroupClass SrvGroup = await Service["_ServiceGroup"];

    /*---script python--*/
    bool isAndroid = await Starflut.isAndroid();
    if (isAndroid == true) {
      await Starflut.copyFileFromAssets(
          "cat.py", "starfiles", "starfiles"); //desRelatePath must be null
      await Starflut.copyFileFromAssets("zlib.cpython-36m.so", null, null);
      await Starflut.copyFileFromAssets(
          "unicodedata.cpython-36m.so", null, null);
      await Starflut.loadLibrary("libpython3.6m.so");
    }

    String docPath = await Starflut.getDocumentPath();
    print("docPath = $docPath");

    String resPath = await Starflut.getResourcePath();
    print("resPath = $resPath");

    dynamic rr1 = await SrvGroup.initRaw("python36", Service);

    print("initRaw = $rr1");
    var Result = await SrvGroup.loadRawModule(
        "python", "", resPath + "/starfiles/" + "cat.py", false);
    print("loadRawModule = $Result");

    dynamic python = await Service.importRawContext("python", "", false, "");
    print("python = " + await python.getString());

    StarObjectClass retobj = await python.call("check", [imageFile]);
    setState(() async {
      cat_per = await retobj;
    });
    return cat_per;
/*
  StarObjectClass retobj = await python.call("tt", ["hello ", "world"]);
  print(await retobj[0]);
  print(await retobj[1]);

  print(await python["g1"]);

  StarObjectClass yy = await python.call("yy", ["hello ", "world", 123]);
  print(await yy.call("__len__",[]));

  StarObjectClass multiply = await Service.importRawContext("python", "Multiply", true, "");
  StarObjectClass multiply_inst = await multiply.newObject(["", "", 33, 44]);
  print(await multiply_inst.getString());

  print(await multiply_inst.call("multiply", [11, 22]));
*/
    //await SrvGroup.clearService();
    //await starcore.moduleExit();
  }
}
