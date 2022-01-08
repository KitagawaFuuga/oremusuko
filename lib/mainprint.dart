import 'package:flutter/material.dart';
import 'talk.dart';
import 'training.dart';
import 'other.dart';

class Mymainrun extends StatefulWidget {
  @override
  _Mymainrun createState() => _Mymainrun();
}

class _Mymainrun extends State<Mymainrun> {
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
            top: 630,
            right: 150,
            child: ElevatedButton(
              child: const Text('練習'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 40),
                primary: Colors.white,
                onPrimary: Colors.lightBlue[800],
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Training(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 630,
            right: 275,
            child: ElevatedButton(
              child: const Text('休み'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 40),
                primary: Colors.white,
                onPrimary: Colors.green,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                date.HP += 90;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => talk(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 710,
            right: 200,
            child: ElevatedButton(
              child: const Text('お出かけ'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 40),
                primary: Colors.white,
                onPrimary: Colors.orange,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => talk(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 710,
            left: 220,
            child: ElevatedButton(
              child: const Text('スキル'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 40),
                primary: Colors.white,
                onPrimary: Colors.blue[200],
                shape: const StadiumBorder(),
              ),
              onPressed: () {},
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
                          Text("${date.stamina}/\n1000"),
                          Text("${date.power}/\n1000"),
                          Text("${date.guts}/\n1000"),
                          Text("${date.smart}/\n1000"),
                        ],
                        decoration: const BoxDecoration(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 500,
              right: 20,
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
              right: 20,
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
              )),
          Positioned(
              top: 50,
              left: 90,
              child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
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
                            Text("目標"),
                          ],
                          decoration:
                              const BoxDecoration(color: Colors.lightBlue),
                        )
                      ],
                    ),
                  ))),
          Positioned(
              top: 50,
              left: 150,
              child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  child: Container(
                    height: 250,
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
                  ))),
          Positioned(
              top: 50,
              left: 20,
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
              left: 20,
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
                right: 20,
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
            ],
          ),
        ],
      ),
    );
  }
}
