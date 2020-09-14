import 'dart:math';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:test_ear_and_eyes/resultear.dart';

class eartest extends StatefulWidget {
  eartest({Key key, this.title}) : super(key: key);
  final String title;
  count() {
    return (_eartestState().stage + 1);
  }

  @override
  _eartestState createState() => _eartestState();
}

class _eartestState extends State<eartest> {
  final audio = AssetsAudioPlayer();
  String musicstr = "abc";
  String sent;
  var stage = 0;
  var flag = 0;
  var song = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loudness Test"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Stage:' + (stage + 1).toString(),
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    elevation: 4,
                    color: Colors.white60,
                    child: Text(
                      'Play',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      musicchooser();
                      playmusic();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.red,
                        elevation: 2,
                        child: Text('Red',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        height: 100,
                        minWidth: 150,
                        onPressed: () {
                          nextstage(0);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        elevation: 2,
                        child: Text(
                            'Blue',
                            style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                        height: 100,
                        minWidth: 150,
                        onPressed: () {
                          nextstage(1);
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
                      child: MaterialButton(
                        color: Colors.green,
                        elevation: 2,
                        child: Text(
                            'Green',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)
                        ),
                        height: 100,
                        minWidth: 150,
                        onPressed: () {
                          nextstage(2);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.yellow,
                        elevation: 2,
                        child: Text('Yellow',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)

                        ),
                        height: 100,
                        minWidth: 150,
                        onPressed: () {
                          nextstage(3);
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
                      child: MaterialButton(
                        color: Colors.white70,
                        elevation: 2,
                        child: Text('White',
                            style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                        height: 100,
                        minWidth: 150,
                        onPressed: () {
                          nextstage(4);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.purple,
                        elevation: 2,
                        child: Text('Purple',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        height: 100,
                        minWidth: 150,
                        onPressed: () {
                          nextstage(5);
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
    );
  }

  musicchooser() {
    if (flag == 0) {
      var r = new Random();
      var n = r.nextInt(6);
      setState(() {
        song = n;
      });
      String str = "sound/" + song.toString() + stage.toString() + ".mp3";
      print(str);
      setState(() {
        musicstr = str;
      });
    }
  }

  playmusic() {
    setState(() {
      flag = 1;
    });
    audio.open(Audio(musicstr));
  }

  nextstage(n) {
    if (stage < 5) {
      if (n == song) {
        setState(() {
          flag = 0;
          stage = stage + 1;
        });
      } else {
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => earresult(
                      count: stage.toString(),
                    )));
      }
    } else {
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => earresult(
                    count: stage.toString(),
                  )));
    }
  }
}
