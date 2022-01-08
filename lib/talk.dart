import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:uma/mainprint.dart';

class talk extends StatefulWidget {
  @override
  _talk createState() => _talk();
}

class _talk extends State<talk> {
  var talkword = <String>[
    '1111111111111111111111',
    '222222222222222222222222',
    '333333333333333333333333333333',
    '44444444444444444444444444444444444',
    '5555555555555555555555555555555555555555555555'
  ];
  String print = 'スタート', name = '北川　楓雅';
  int kazu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/maingorira.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 550,
              left: 35,
              child: Bubble(
                padding: BubbleEdges.all(5),
                child: Container(
                    height: 125,
                    width: 300,
                    alignment: Alignment.center,
                    child: Text(
                      print,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
            Positioned(
              top: 540,
              left: 60,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        onTap: () => {
          setState(() {
              print = talkword[kazu];
              kazu = kazu + 1;
              if (kazu >= talkword.length)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mymainrun(),
                  ),
                );
            },
          ),
        },
      ),
    );
  }
}
