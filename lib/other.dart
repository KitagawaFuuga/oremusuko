import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class date {
  static int speed = 200,
      stamina = 200,
      power = 200,
      guts = 200,
      smart = 200,
      skill = 200,
      turn = 15,
      conditionmath = 2,
      resultmath = 1;
  static double HP = 190;
  static List<String> condistions = ['絶不調', '不調', '普通', '好調', '絶好調'];
  static bool talkingevent = false;
}

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
                      border: Border.all(color: setColors()),
                      color: setColors(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      child: Text(date.condistions[date.conditionmath]),
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

  Color setColors() {
    if (date.conditionmath == 2) {
      return Colors.green;
    } else if (date.conditionmath == 1) {
      return Colors.blue;
    } else if (date.conditionmath == 0) {
      return Colors.purple;
    } else if (date.conditionmath == 3) {
      return Colors.orange;
    } else {
      return Colors.pink;
    }
  }
}

void conditionup() {
  if (date.conditionmath < 4) {
    date.conditionmath += 1;
  }
}

void conditiondown() {
  if (date.conditionmath > 0) {
    date.conditionmath -= 1;
  }
}

void battlekeka(){
  int total = date.speed + date.guts + date.power + date.smart + date.stamina;
  if(total > 1200){
    date.resultmath = 1;
  }else if(total <= 1200 && total > 1050){
    date.resultmath = 2;
  }else if(total <= 1050 && total > 800){
    date.resultmath = 3;
  }else{
    date.resultmath = 12;
  }
  
}