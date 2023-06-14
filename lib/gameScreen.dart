import 'dart:math';

import 'package:flutter/material.dart';

void main(){

}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
          appBar: AppBar(
            backgroundColor: Colors.black,
      title: const Text("Dice Roller Game",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign:TextAlign.center,),
          ),
          body: Center(
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Dice Roller",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              ),
            
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.network(
                  "https://raw.githubusercontent.com/bishworajpoudelofficial/flutter_dice_roller/master/assets/$diceNumber.png"
                  ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                ),
              ),
ElevatedButton(
  onPressed: () {
    changeDice();
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 39, 206, 45),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),
  child: const Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
      "Roll the Dice",
      style: TextStyle(fontSize: 14),
    ),
  ),
),

            ]
            ),
          ),
    );
  }
  int diceNumber=1;
  void changeDice(){
     Random random =Random();
    setState(() {
      diceNumber=random.nextInt(6)+1;
    }
    );
  }
}

