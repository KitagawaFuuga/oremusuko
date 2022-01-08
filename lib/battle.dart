import 'package:flutter/material.dart';
import 'package:uma/battleresurt.dart';
import 'other.dart';

class Battle extends StatefulWidget {
  @override
  _Battle createState() => _Battle();
}

class _Battle extends State<Battle> {
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
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 700),
              padding: const EdgeInsets.all(5.0),
              width: 300,
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text("Containerの角丸枠線"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "デビュー",
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 270),
            child: Text(
              'N番人気 ○ ○ ○',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 75, left: 160),
            child: OutlinedButton(
              child: Text(
                'ステータス',
                style: TextStyle(fontSize: 13),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.green),
                fixedSize: Size(115, 10),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 75, left: 275),
            child: OutlinedButton(
              child: Text(
                'スキール',
                style: TextStyle(fontSize: 13),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.green),
                fixedSize: Size(115, 10),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 120, right: 10),
                  color: Colors.blue,
                  width: 220.0,
                  height: 200.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  color: Colors.blue,
                  width: 220.0,
                  height: 60.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  color: Colors.blue,
                  width: 220.0,
                  height: 40.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  color: Colors.blue,
                  width: 220.0,
                  height: 90.0,
                ),
              ],
            ),
          ),
          Positioned(
            top: 150,
            right: 160,
            child: Text('スピード'),
          ),
          Positioned(
            top: 150,
            right: 60,
            child: Text(
             date.speed.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: 180,
            right: 160,
            child: Text('スタミナ'),
          ),
          Positioned(
            top: 180,
            right: 60,
            child: Text(
              date.stamina.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: 210,
            right: 160,
            child: Text('パワー'),
          ),
          Positioned(
            top: 210,
            right: 60,
            child: Text(
              date.power.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: 240,
            right: 160,
            child: Text('根性'),
          ),
          Positioned(
            top: 240,
            right: 60,
            child: Text(
              date.guts.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: 270,
            right: 160,
            child: Text('賢さ'),
          ),
          Positioned(
            top: 270,
            right: 60,
            child: Text(
              date.smart.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: 330,
            right: 150,
            child: Column(
              children: [
                Text('芝'),
                Text('中距離'),
                Text('先行'),
              ],
            ),
          ),
          Positioned(
            top: 340,
            right: 100,
            child: Column(
              children: [
                Text('A'),
                Text('A'),
                Text('A')
              ],
            ),
          ),
          Positioned(
            top: 405,
            right: 80,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: const Text("調子"),
              ),
            ),
          ),
          Positioned(
            top: 470,
            right: 10,
            child: Row(
              children: [
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Center(
                  child: Text('追込'),
                ),
              ),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Center(
                  child: Text('差し'),
                ),
              ),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Center(
                  child: Text('先行'),
                ),
              ),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Center(
                  child: Text('逃げ'),
                ),
              ),
            ]),
          ),
          
          Positioned(
            top: 490,
            right: 10,
            child: Row(
              children: [
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text('1人'),
                ),
              ),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text('5人'),
                ),
              ),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text('7人'),
                ),
              ),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text('３人'),
                ),
              ),
            ]),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 580),
                  color: Colors.blue,
                  width: 260.0,
                  height: 40.0,
                  child: Text(
                    'せやな',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => battleresu()));
                      },
                      child: Text(
                        '結果を見る',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.brown[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
