import 'package:flutter/material.dart';
import 'package:flutter_application_1/matchesGamemulti.dart';
import 'package:flutter_application_1/nbreofmatches.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizgame.dart';
import 'package:flutter_application_1/screens/quiz/quiz_screen.dart';
import 'package:flutter_application_1/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/quizgamechiheb.dart';

import '../quiz/quiz_screen.dart';

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
      body : Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back20.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            const Padding(
              padding:  EdgeInsets.all(18.0),
              child: Text(
                'Logik Games',
                style:TextStyle(
                  color:Colors.white,
                  fontSize:28.0,
                  fontWeight:FontWeight.bold
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing:20.0,
                  runSpacing: 20.0,
                  children:[
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color:Color.fromARGB(255, 249, 249, 249),
                        elevation:2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child:Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizGame()));},
                                  iconSize: 140.0,icon: Image.asset("assets/quiz1.png"),
                                  ),
                                
                              ],
                            ))))

                    ),
                    SizedBox(
                      width: 180.0,
                      height: 180.0,
                      child: Card(
                        color:Color.fromARGB(255, 255, 255, 255),
                        elevation:2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          
                          child:Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: (){Overlay.of(context)?.insert(_getEntry(context));},
                                  iconSize: 150.0,icon:Image.asset('assets/matches2.jpg'),
                                  ),
                                
                              ],
                            ))))

                    ),

                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color:Color.fromARGB(255, 255, 255, 255),
                        elevation:2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: (){Overlay.of(context)?.insert(_getEntry(context));},
                                  iconSize: 130.0,icon:Image.asset('assets/whodid.jpg'),
                                  ),
                                
                              ],
                            ))))

                    ),
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color:Color.fromARGB(255, 255, 255, 255),
                        elevation:2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz1()));},
                                  iconSize: 130.0,icon:Image.asset('assets/circuit.jpg'),
                                  ),
                                
                              ],
                            ))))

                    ),
                  ]

                ),
              ),
            )
          ]),
          ),
    );
  }

}