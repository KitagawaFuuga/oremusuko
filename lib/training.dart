import 'package:flutter/material.dart';
import 'mainprint.dart';
import 'other.dart';
import 'talk.dart';

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
          Positioned(
            top: 50,
            left: 80,
            child: Row(
              children: <Widget>[
                DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Table(
                      border: TableBorder.all(color: Colors.cyan),
                      columnWidths: const <int, TableColumnWidth>{},
                      defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      children: [
                        TableRow(
                          children: [
                            Text("目標"),
                          ],
                          decoration:
                              const BoxDecoration(color: Colors.lightBlue),
                        )
                      ],
                    ),
                  ),
                ),
                DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  child: Container(
                    height: 60,
                    width: 250,
                    child: Table(
                      border: TableBorder.all(color: Colors.cyan),
                      columnWidths: const <int, TableColumnWidth>{},
                      defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      children: [
                        TableRow(
                          children: [
                            Text("メイクデビューに出走する"),
                          ],
                          decoration: const BoxDecoration(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 50,
              left: 10,
              child: DefaultTextStyle(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.cyan,
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
                        children: [Text("${date.turn}\nターン")],
                        decoration: const BoxDecoration(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 30,
              left: 10,
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
                        children: [Text("残り")],
                        decoration: const BoxDecoration(color: Colors.cyan),
                      )
                    ],
                  ),
                ),
              )),
          Stack(
            children: <Widget>[
              Positioned(
                top: 100,
                right: 10,
                child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      child: const Text("調子"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 80,
                child: DefaultTextStyle(
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    width: 225,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      child: const Text("体力"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 103,
                right: 90,
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  width: date.HP,
                  height: 25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        Colors.lightBlue.withOpacity(0.6),
                        Colors.red.withOpacity(1),
                      ],
                    ),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: 610,
                child: Center(
                  child: Row(
                    children: [
                      GestureDetector(
                        onDoubleTap: () {
                          setState(
                            () {
                              date.speed += 20;
                              date.skill += 5;
                              date.turn -= 1;
                              if (date.HP > 20) {
                                date.HP -= 30;
                              } 
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mymainrun(),
                                ),
                              );
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
                              date.stamina += 20;
                              date.skill += 5;
                              date.turn -= 1;
                              if (date.HP > 0) {
                                date.HP -= 30;
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
                          setState(() {
                            date.power += 20;
                            date.skill += 5;
                            date.turn -= 1;
                            if (date.HP > 0) {
                              date.HP -= 30;
                            } else {
                              date.HP = 1;
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Mymainrun(),
                              ),
                            );
                          });
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
                          setState(
                            () {
                              date.guts += 20;
                              date.skill += 5;
                              date.turn -= 1;
                              date.HP -= 30;
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
                          setState(
                            () {
                              date.smart += 20;
                              date.skill += 5;
                              date.turn -= 1;
                              date.HP += 15;
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
        ],
      ),
    );
  }
}
