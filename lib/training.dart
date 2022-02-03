import 'package:flutter/material.dart';
import 'mainprint.dart';
import 'other.dart';
import 'talk.dart';
import 'dart:math';
import 'talkother.dart';

class Training extends StatefulWidget {
  @override
  _Training createState() => _Training();
}

class _Training extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
              top: 500,
              left: 10,
              child: DefaultTextStyle(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown[800],
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  child: Table(
                    border: TableBorder.all(color: Colors.orange),
                    columnWidths: const <int, TableColumnWidth>{},
                    defaultVerticalAlignment: TableCellVerticalAlignment.top,
                    children: [
                      TableRow(
                        children: [
                          Text("${date.speed}/\n1000"),
                          Text("${date.stamina} /\n1000"),
                          Text("${date.power} /\n1000"),
                          Text("${date.guts} /\n1000"),
                          Text("${date.smart} /\n1000"),
                        ],
                        decoration: const BoxDecoration(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 500,
              right: 15,
              child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.brown[800],
                  ),
                  child: Container(
                    height: 120,
                    width: 60,
                    child: Table(
                      border: TableBorder.all(color: Colors.cyan),
                      columnWidths: const <int, TableColumnWidth>{},
                      defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      children: [
                        TableRow(
                          children: [
                            Text(date.skill.toString()),
                          ],
                          decoration: const BoxDecoration(color: Colors.white),
                        )
                      ],
                    ),
                  ))),
          Positioned(
              top: 480,
              left: 10,
              child: DefaultTextStyle(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
                child: Container(
                  height: 100,
                  width: 300,
                  child: Table(
                    border: TableBorder.all(color: Colors.orange),
                    columnWidths: const <int, TableColumnWidth>{},
                    defaultVerticalAlignment: TableCellVerticalAlignment.top,
                    children: [
                      TableRow(
                        children: [
                          Text("スピード"),
                          Text("スタミナ"),
                          Text("パワー"),
                          Text("根性"),
                          Text("賢さ"),
                        ],
                        decoration: const BoxDecoration(color: Colors.orange),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
            top: 480,
            right: 15,
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
              child: Container(
                height: 100,
                width: 60,
                child: Table(
                  border: TableBorder.all(color: Colors.cyan),
                  columnWidths: const <int, TableColumnWidth>{},
                  defaultVerticalAlignment: TableCellVerticalAlignment.top,
                  children: [
                    TableRow(
                      children: [Text("スキルPt")],
                      decoration: const BoxDecoration(color: Colors.cyan),
                    )
                  ],
                ),
              ),
            ),
          ),
          Top(),
          Positioned(
            top: 610,
            child: Center(
              child: Row(
                children: [
                  GestureDetector(
                    onDoubleTap: () {
                      setState(
                        () {
                          randomtrain();
                          if (success) {
                            date.speed += 20;
                            date.skill += 5;
                            date.turn -= 1;
                            if (date.HP > 0) {
                              date.HP -= 21;
                            } else {
                              date.HP = 1;
                            }
                            if (date.turn == 0) {
                              date.turn = 15;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => talk(),
                                ),
                              );
                            } else {
                              runevent();
                              if (date.talkingevent) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => talk(),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mymainrun(),
                                  ),
                                );
                              }
                            }
                          } else {
                            success = false;
                            trainingFaulure();
                            date.turn -= 1;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => talk(),
                              ),
                            );
                          }
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(2),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text('スピード'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      setState(
                        () {
                          randomtrain();
                          if (success) {
                            date.stamina += 20;
                            date.skill += 5;
                            date.turn -= 1;
                            if (date.HP > 0) {
                              date.HP -= 19;
                            } else {
                              date.HP = 1;
                            }
                            if (date.turn == 0) {
                              date.turn = 15;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => talk(),
                                ),
                              );
                            } else {
                              runevent();
                              if (date.talkingevent) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => talk(),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mymainrun(),
                                  ),
                                );
                              }
                            }
                          } else {
                            success = false;
                            trainingFaulure();
                            date.turn -= 1;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => talk(),
                              ),
                            );
                          }
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(2),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text('スタミナ'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      setState(
                        () {
                          randomtrain();
                          if (success) {
                            date.power += 20;
                            date.skill += 5;
                            date.turn -= 1;
                            if (date.HP > 0) {
                              date.HP -= 20;
                            } else {
                              date.HP = 1;
                            }
                            if (date.turn == 0) {
                              date.turn = 15;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => talk(),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mymainrun(),
                                ),
                              );
                            }
                          } else {
                            success = false;
                            trainingFaulure();
                            date.turn -= 1;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => talk(),
                              ),
                            );
                          }
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(2),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text('パワー'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      randomtrain();
                      setState(
                        () {
                          randomtrain();
                          if (success) {
                            date.guts += 20;
                            date.skill += 5;
                            date.turn -= 1;
                            if (date.HP > 0) {
                              date.HP -= 22;
                            } else {
                              date.HP = 1;
                            }
                            if (date.turn == 0) {
                              date.turn = 15;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => talk(),
                                ),
                              );
                            } else {
                              runevent();
                              if (date.talkingevent) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => talk(),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mymainrun(),
                                  ),
                                );
                              }
                            }
                          } else {
                            success = false;
                            trainingFaulure();
                            date.turn -= 1;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => talk(),
                              ),
                            );
                          }
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(2),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text('根性'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      randomtrain();
                      setState(
                        () {
                          if (success) {
                            date.smart += 20;
                            date.skill += 5;
                            date.turn -= 1;
                            date.HP += 5;
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => talk(),
                              ),
                            );
                          }
                          if (date.turn == 0) {
                            date.turn = 15;
                            date.battlerun = true;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => talk(),
                              ),
                            );
                          } else {
                            runevent();
                            if (date.talkingevent) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => talk(),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mymainrun(),
                                ),
                              );
                            }
                          }
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(2),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text('賢さ'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 720,
            child: IconButton(
              iconSize: 50,
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mymainrun()))
              },
              color: Colors.blue,
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }
}

void randomtrain() {
  double Failure;
  if(date.HP <= 55){
    Failure = 1/17 * ((date.HP - 50) * (date.HP - 50)) ;
  }else{
    Failure = 0;
  }
  int radom = Random().nextInt(100);
  print(Failure);
  
  if (Failure >= radom) {
    success = false;
  } else {
    success = true;
  }
}

bool success = false;
