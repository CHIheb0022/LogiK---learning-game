import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as m;
import 'package:flutter_application_1/MainMenu.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:elliptic_text/elliptic_text.dart';

class MatchesMulti extends StatefulWidget {
  const MatchesMulti({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MatchesMulti> createState() => MatchesGameMulti();
}

class MatchesGameMulti extends State<MatchesMulti> {
  int Player1Turn = 0; 
  int NbrMatches=20;
  int Player2Turn =0;
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
            child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 350,
                      color: Colors.blue[700],
                      child: Column(
                        children: [
                           Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 100),
                            child: Text(
                              "Player One Lost!",
                             style: TextStyle(
              fontSize: 40,
              foreground: Paint()
             ..shader = ui.Gradient.linear(
              const Offset(0, 20),
               const Offset(150, 20),
               <Color>[
               Colors.red,
                Colors.yellow,
        ],
      )
  ),
                            ),
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
                                          builder: (context) =>
                                               const MatchesMulti(title: '',)),
                                      (Route<dynamic> route) => false,
                                    );
                                    entry.remove();
                                  },
                                  child:  Text(
                                    "Restart Level",
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
      )
  ),
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
                                            builder: (context) => const MainMenuPage()));
                                    entry.remove();
                                  },
                                  child:  Text(
                                    "Main Menu",
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
      )
  ),
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
          ),
        ),
      ),
    );
    return entry;
  }
  void Game() {
    setState(() {
      NbrMatches=NbrMatches-Player1Turn;
      if(NbrMatches<=1){Overlay.of(context)?.insert(_getEntry(context));}
NbrMatches=NbrMatches-Player2Turn;
if(NbrMatches<=1){Overlay.of(context)?.insert(_getEntry(context));}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        decoration: const BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/Background multi.png"), 
        fit: BoxFit.cover),
  ),
         child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[       
           Align(
      alignment: Alignment.topCenter,
      child :Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
      IconButton(
        onPressed: (){Player1Turn=1;Game();},
        iconSize: 110.0,
         icon: Transform.rotate(
          angle: m.pi, 
          child:Image.asset("assets/1.png"),
          ),
        ),
     IconButton(
        onPressed: (){Player1Turn=2;Game();},
        iconSize: 110.0,
        icon: Transform.rotate(
          angle: m.pi, 
          child:Image.asset("assets/2.png"),
          ),
        ),
      IconButton(
        onPressed: (){Player1Turn=3;Game();},
        iconSize: 110.0,
         icon: Transform.rotate(
          angle: m.pi, 
          child:Image.asset("assets/3.png"),
          ),
        ),
    ],
      ),
    ),
        Transform.rotate(
          angle: m.pi,
          child:CircularText(
  children: [
    TextItem(
      text: Text(
              'The number of matches is $NbrMatches The number of matches is $NbrMatches ',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 45,
              color: Colors.yellow[900],
  ),
            ),
       space: 6.2,
      startAngle: 180,
      startAngleAlignment: StartAngleAlignment.center,
      direction: CircularTextDirection.anticlockwise,
    ),
    ],
     radius: 280,
  position: CircularTextPosition.inside,
    )
        ),
            Align(
      alignment: Alignment.bottomCenter,
      child :Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        onPressed: (){Player2Turn=1;Game();},
        iconSize: 110.0,
        // ignore: prefer_const_constructors
        icon:  Image.asset("assets/1.png"
        ),
        ),
     IconButton(
        onPressed: (){Player2Turn=2;Game();},
        iconSize: 110.0,
        icon: Image.asset("assets/2.png"
        ),
        ),
      IconButton(
        onPressed: (){Player2Turn=3;Game();},
        iconSize: 110.0,
         icon:  Image.asset("assets/3.png"
        ),
        ),
    ],
      ),
    ),

          ],
        ),

    )
    );
  }
}

