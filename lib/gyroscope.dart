import 'package:dronese/widgets/drop_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sensors/sensors.dart';

import 'home_page.dart';






class Gyro extends StatefulWidget {
  @override
  _GyroState createState() => _GyroState();
}

class _GyroState extends State<Gyro> {
  double x = 0, y = 0, z = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: 100,
        child: Drawer(
          child: DropButton(),
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.landscape),
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          IconButton(
            icon: Icon(Icons.settings_backup_restore),
            onPressed: () {},
          ),
        ],
        title: Container(
          width: 200,
          color: Colors.green,
          child: Align(child: Text("GYROSCOPE")),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("x: "+x.toStringAsFixed(3)),
                        SizedBox(width: 10,),
                        Text("y: "+y.toStringAsFixed(3)),
                        SizedBox(width: 10,),
                        Text("z: "+z.toStringAsFixed(3)),
                      ],
                    ),
                        RaisedButton(
                          onPressed: () {
                            gyroscopeEvents.listen((GyroscopeEvent event) {
                              setState(() {
                                x = event.x;
                                y = event.y;
                                z = event.z;
                                print(event);
                              });
                            });
                          },
                          child: Text("Start"),
                        ),
                  ],
                ),
            ),
            Align(
              alignment: Alignment(x, y),
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image(
                    image: AssetImage("images/quadcopter.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
