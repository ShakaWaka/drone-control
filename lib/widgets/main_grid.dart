import 'package:flutter/material.dart';
import 'package:dronese/control_page.dart';
import 'package:dronese/gps_page.dart';
import 'package:dronese/overview_page.dart';

import '../gyroscope.dart';

class MainGrid extends StatefulWidget {
  @override
  _MainGridState createState() => _MainGridState();
}

class _MainGridState extends State<MainGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.all(90),
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        crossAxisCount: 1,
        children: <Widget>[
          InkWell(
            splashColor: Colors.purple,
            highlightColor: Colors.red,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ControlPage()),
              );
            },
            child: Material(
              color: Colors.transparent,
              child: Container(
                child: Image(
                  image: AssetImage("images/joystick.png"),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.purple,
            highlightColor: Colors.red,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OverViewPage()),
              );
            },
            child: Material(
              color: Colors.transparent,
              child: Container(
                child: Image.asset(
                  "images/drone_icon1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.purple,
            highlightColor: Colors.red,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Gyro()),
              );
            },
            child: Material(
              color: Colors.transparent,
              child: Container(
                child: Image.asset(
                  "images/gyroscope1.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
