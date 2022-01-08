import 'package:flutter/material.dart';

class Myhomerun extends StatefulWidget {
  @override
  _Myhomerun createState() => _Myhomerun();
}

class _Myhomerun extends State<Myhomerun> {
  @override
  bool _visible = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            print('fuck');
          },
          child: Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/gorira.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Text('OnTap'),
            )
          ])),
    );
  }
}
