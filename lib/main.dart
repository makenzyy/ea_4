import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MainDice(),
  );
}

class MainDice extends StatefulWidget {
  const MainDice({super.key});

  @override
  State<MainDice> createState() => _MainDiceState();
}

class _MainDiceState extends State<MainDice> {
  int left = 1;
  int right = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Text('Dice'),
            backgroundColor: Colors.black,
          ),
          body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (){
                              setState(() {
                                left = Random().nextInt(6) + 1;
                              });
                              print('Left image is clicked');
                              print(left);
                            },
                            child: Image.asset('image/dice$left.png')),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (){
                              setState(() {
                                right = Random().nextInt(6) + 1;
                              });
                              print('Right image is clicked');
                              print(right);
                            },
                            child: Image.asset('image/dice$right.png')),
                      ),
                    ),
                  ], // Children
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Left : $left',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Right : $right',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                          'Total : ${left + right}',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                left = Random().nextInt(6) + 1;
                right = Random().nextInt(6) + 1;
              });
              print('Both dice rolled');
            },
            child: const Icon(Icons.refresh),
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
          ),
      ),
    );
  }
}


