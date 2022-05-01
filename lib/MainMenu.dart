import 'package:flutter/material.dart';
import 'package:flutter_application_1/matchesGame.dart';
import 'package:flutter_application_1/matchesGamemulti.dart';
import 'package:flutter_application_1/quizgame.dart';
import 'package:flutter_application_1/nbreofmatches.dart';
import 'dart:ui' as ui;

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key? key}) : super(key: key);
  OverlayEntry _getEntry(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

    entry = OverlayEntry(
      opaque: false,
      maintainState: true,
      builder: (_) => Positioned(
        left: 0,
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 350,
                     decoration: const BoxDecoration(
                          color: ui.Color.fromARGB(255, 7, 0, 82) ,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {
                                  entry.remove();
                                },
                                icon: Icon(Icons.close_rounded)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: SizedBox(
                              width: 230,
                              height: 50,
                              child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const NbrMatches()),
                                      (Route<dynamic> route) => false,
                                    );
                                    entry.remove();
                                  },
                                  child: Text(
                                    "Solo Mode",
                                    style: TextStyle(
                                        fontSize: 20,
                                        foreground: Paint()
                                          ..shader = ui.Gradient.linear(
                                            const Offset(0, 20),
                                            const Offset(150, 20),
                                            <Color>[
                                              Colors.red,
                                              Colors.yellow,
                                            ],
                                          )),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          width: 3.0, color: Colors.white))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: SizedBox(
                              width: 230,
                              height: 50,
                              child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MatchesMulti(title: '')));
                                    entry.remove();
                                  },
                                  child: Text(
                                    "Multiplayer Mode",
                                    style: TextStyle(
                                        fontSize: 20,
                                        foreground: Paint()
                                          ..shader = ui.Gradient.linear(
                                            const Offset(0, 20),
                                            const Offset(150, 20),
                                            <Color>[
                                              Colors.red,
                                              Colors.yellow,
                                            ],
                                          )),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          width: 3.0, color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return entry;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Stack(children: <Widget>[
          Center(
              child: Column(children: <Widget>[
            Text("****************"),
            Text("****************"),
            Text("****************"),
            ElevatedButton(
                onPressed: () {
                  Overlay.of(context)?.insert(_getEntry(context));
                },
                child: Text('Matches ')),
                 ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizGame()));
                },
                child: Text('quiz ')),
          ]))
        ]));
  }
}
