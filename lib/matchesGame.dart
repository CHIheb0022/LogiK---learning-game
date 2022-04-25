import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_application_1/MainMenu.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Matches> createState() => MatchesGame();
}

class MatchesGame extends State<Matches> {
  int PlayerTurn = 0; 
  int NbrMatches=20;
  int CpuTurn =0;
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                              "You Lost !",
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
                                              const Matches(title: '',)),
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
      NbrMatches=NbrMatches-PlayerTurn;
      if(NbrMatches==1){Overlay.of(context)?.insert(_getEntry(context));}
      switch(NbrMatches % 4) { 
   case 3: { 
      CpuTurn= 2;
      break; } 
    case 2: { 
      CpuTurn=1;
      break;
   } 
    case 0:{
        CpuTurn=3;
        break;
      }
    
   default: {CpuTurn=1 ; break;
   }   
} 
NbrMatches=NbrMatches-CpuTurn;
if(NbrMatches==1){Overlay.of(context)?.insert(_getEntry(context));}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        decoration: const BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/Background singleplayer.png"), 
        fit: BoxFit.cover),
  ),
         child: Stack(
         children: <Widget>[
Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
             Center(child: Text(
              'The number of matches is',
              textAlign: TextAlign.center,
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
            ),),
            Text(
              '$NbrMatches',
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
            Align(
      alignment: Alignment.bottomCenter,
      child :Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        onPressed: (){PlayerTurn=1;Game();},
        iconSize: 110.0,
        // ignore: prefer_const_constructors
        icon:  Image.asset(
          "assets/1.png" 
          ),
        ),
     IconButton(
        onPressed: (){PlayerTurn=2;Game();},
        iconSize: 110.0,
        icon: Image.asset("assets/2.png"
        ),
        ),
      IconButton(
        onPressed: (){PlayerTurn=3;Game();},
        iconSize: 110.0,
         icon:  Image.asset("assets/3.png"
        ),
        ),
    ],
      ),
    ),

          ],
        ),

    ),
         ],
      ),
    ),
    );
  }
}
