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
          Top(),
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
                date.conditionmath += 1;
                date.turn -= 1;
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
        ],
      ),
    );
  }
}
