import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_ear_and_eyes/cataract.dart';
import 'package:test_ear_and_eyes/main.dart';
import 'package:test_ear_and_eyes/resulteye.dart';

class eyetest extends StatefulWidget {
  eyetest({Key key, this.title}) : super(key: key);
  final String title;
  count() {
    return _eyetestState().counter;
  }
  @override
  _eyetestState createState() => _eyetestState();
}

class _eyetestState extends State<eyetest> {
  double counter = 1.0;
  var fontsize = 100.0;
  var ret = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vision Aurity Test"),),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: new MaterialButton(
                          color: Colors.white70,
                          elevation: 8,
                          child: Icon(Icons.keyboard_arrow_up_outlined,),
                          height: 50,
                          minWidth: 50,
                          onPressed: () {
                            fontsizechange(2);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: new MaterialButton(
                            color: Colors.white70,
                            elevation: 8,
                            child: Icon(Icons.keyboard_arrow_left_outlined,),
                            height: 50,
                            minWidth: 50,
                            onPressed: () {
                              fontsizechange(1);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RotatedBox(
                          quarterTurns: randommovement(),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Text(
                                randomcharacter(),
                                style: TextStyle(
                                  fontSize: fontsize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: new MaterialButton(
                            color: Colors.white70,
                            elevation: 8,
                            child: Icon(Icons.keyboard_arrow_right_outlined,),
                            height: 50,
                            minWidth: 50,
                            onPressed: () {
                              fontsizechange(3);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: new MaterialButton(
                          color: Colors.white70,
                          elevation: 8,
                          child: Icon(Icons.keyboard_arrow_down_outlined,),
                          height: 50,
                          minWidth: 50,
                          onPressed: () {
                            fontsizechange(0);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  randomcharacter() {
    final String alphabet = "AFGJLPQRTUVY";
    var r = new Random();
    var n = r.nextInt(11);
    var rand = alphabet[n];
    return rand;
  }

  randommovement() {
    var r = new Random();
    var n = r.nextInt(4);
    setState(() {
      ret = n;
    });
    return n;
  }
  fontsizechange(k) {
    if (k == ret) {
      setState(() {
        counter = counter + 1;
      });
      if (fontsize > 40) {
        setState(() {
          fontsize = fontsize - 20;
        });
      } else if (fontsize > 20) {
        setState(() {
          fontsize = fontsize - 10;
        });
      } else if (fontsize > 10) {
        setState(() {
          fontsize = fontsize - 5;
        });
      } else if (fontsize > 5) {
        setState(() {
          fontsize = fontsize - 2.5;
        });
      }
      else{
        print(counter);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => eyeresult(result: counter.toString(),)));
      }
    }
    else{
      print(counter);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => eyeresult(result: counter.toString(),)));
    }
  }
}
