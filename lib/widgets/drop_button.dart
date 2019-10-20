import 'package:flutter/material.dart';

class DropButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      padding: EdgeInsets.only(top: 50),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              child: Column(
            children: <Widget>[
              Text(
                "213k",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "0.636kPa",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "0.42mGy/h",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "2000 m",
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 2,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "POC",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "3000 m",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 2,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "95% CO2",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "3% N",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "16% Ar",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
