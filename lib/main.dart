import 'dart:math';
import 'package:flutter/material.dart';


void main(){
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: const MyApp(),
        ),
      )
  );
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int BallNo = 2;
  void ball(){
    BallNo = Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        ball();
                      });
                    },
                    child: Image.asset('images/ball$BallNo.png',
                    ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

