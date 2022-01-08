import 'package:flutter/material.dart';
import 'package:uma/talk.dart';

class battleresu extends StatelessWidget {
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
            top: 180,
            left: 60,
            child: Text(
              'N着',
              style: TextStyle(fontSize: 80, color: Colors.yellow),
            ),
          ),
          Positioned(
            top: 400,
            left: 25,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 50,
            child: Text(
              'aaaaaaaaaaaa',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 50,
            child: Text(
              'aaaaaaaaaaaa',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 110,
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 180,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => talk()),
                    );
                  },
                  child: Text(
                    '次へ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.brown[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
