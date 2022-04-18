import 'package:flutter/material.dart';


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

  void Game() {
    setState(() {
      NbrMatches=NbrMatches-PlayerTurn;
      if(NbrMatches==1){;}
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
if(NbrMatches==1){;}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Stack(
         children: <Widget>[
Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'the number of matches is :',
              style: TextStyle(color: Colors.cyan),
            ),
            Text(
              '$NbrMatches',
              style: Theme.of(context).textTheme.headline4,
              
            ),
            Align(
      alignment: Alignment.bottomCenter,
      child :Row(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: (){PlayerTurn=1;Game();},
        iconSize: 60.0,
        icon:  const ImageIcon(
          AssetImage("assets/pngegg.png"),
        ),),
      SizedBox(width: 25,),
      ElevatedButton(onPressed: (){PlayerTurn=2;Game();}, child: Text('two ')),
      SizedBox(width: 25,),
      ElevatedButton(onPressed: (){PlayerTurn=3;Game();}, child: Text('three ')),
    ],
      ),
    ),

          ],
        ),

    ),
         ],
      ),
      );
  }
}