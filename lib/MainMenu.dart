import 'package:flutter/material.dart';
import 'package:flutter_application_1/matchesGame.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
       children: <Widget>[ 
         Center(child: Column(children:<Widget> [Text("****************"),
          Text("****************"),
          Text("****************"),
          ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Matches(title: '',)));}, 
          child: Text('matches ')),]
          ) 
          )

       ]
        )
        );
  }
}