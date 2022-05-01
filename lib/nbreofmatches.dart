import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/matchesGame.dart';
import 'package:flutter_application_1/matchesGamemulti.dart';

import 'login.dart';
class NbrMatches  extends StatefulWidget {
  const NbrMatches({Key? key}) : super(key: key);
  @override
  State<NbrMatches> createState() => SetMatchesNbr();  
}
class SetMatchesNbr extends State<NbrMatches> {
 String NbrMatchesstring='';
  final TextEditingController _controller = TextEditingController();
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
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 360,
                       decoration: const BoxDecoration(
                          color: ui.Color.fromARGB(255, 7, 0, 82) ,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                      child: Column(
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              "Choose a Number of Matches",
                             style: TextStyle(
              fontSize: 25,
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
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Matches Number"),
                    ],
                  ),
                ),
                Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: SizedBox(
                              width: 230,
                              height: 50,
                              child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      NbrMatchesstring=_controller.text;
                                    });
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Matches(
                                                title: '',
                                              )),
                                      (Route<dynamic> route) => false,
                                    );
                                    entry.remove();
                                  },
                                  child: Text(
                                    "let's get started",
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
                  ]
        ),
      ),
    ),
    ),
    );
    return entry;
 }
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color:Colors.black87
        ),

      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
             // color: Colors.grey[400]
            ),

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(/*color: Colors.grey[400]*/)
          )
        ),
      ),
      const SizedBox(height: 10,)
    ],
  );
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
         child:Center(child:ElevatedButton(
                onPressed: () {
                  Overlay.of(context)?.insert(_getEntry(context));
                },
                child: Text('Matches ',
                )),
        
    ),)
    );
}
}