import 'dart:math';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var fontsize = 100.0;
  var ret = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: new MaterialButton(
                          color: Colors.grey,
                          elevation: 2,
                          child: Text('Button'),
                          height: 50,
                          minWidth: 100,
                          onPressed: (){
                            if(ret == 2) {
                              if(ret == 2) {
                                fontsizechange();
                              }
                            }
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
                              color: Colors.grey,
                              elevation: 2,
                              child: Text('But'),
                              height: 100,
                              minWidth: 50,
                              onPressed: (){
                                if(ret == 1) {
                                  fontsizechange();
                                }
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
                              color: Colors.grey,
                              elevation: 2,
                              child: Text('But'),
                              height: 100,
                              minWidth: 50,
                              onPressed: (){
                                if(ret == 3) {
                                  fontsizechange();
                                }
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
                          color: Colors.grey,
                          elevation: 2,
                          child: Text('Button'),
                          height: 50,
                          minWidth: 100,
                          onPressed: (){
                            if(ret == 0) {
                              fontsizechange();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  randomcharacter(){
    final String alphabet = "AFGJLPQRTUVY";
    var r = new Random();
    var n = r.nextInt(11);
    var rand = alphabet[n];
    return rand;
  }
  randommovement(){
    var r = new Random();
    var n = r.nextInt(4);
    setState(() {
      ret = n;
    });
    return n;
  }
  fontsizechange() {
    if (fontsize > 40) {
      setState(() {
        fontsize = fontsize - 20;
      });
    }
    else if(fontsize > 20){
      setState(() {
        fontsize = fontsize - 10;
      });
    }
    else if(fontsize > 10) {
      setState(() {
        fontsize = fontsize - 5;
      });
    }
    else if(fontsize > 5) {
      setState(() {
        fontsize = fontsize - 2.5;
      });
    }
  }
}
