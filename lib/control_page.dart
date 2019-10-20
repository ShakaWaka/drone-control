import 'package:dronese/widgets/alert_dial.dart';
import 'package:dronese/widgets/drop_button.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class ControlPage extends StatefulWidget {
  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  String foto = "images/marte.jpg";
  double x = 0;

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
            onPressed: () {
              setState(() {
                if (foto == "images/marte.jpg") {
                  foto = "images/topology.jpeg";
                } else {
                  foto = "images/marte.jpg";
                }
              });
            },
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
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDial();
                },
              );
            },
          ),
        ],
        title: Container(
          width: 200,
          color: Colors.green,
          child: Align(child: Text("CONTROL")),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(foto), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 10,
            child: Container(
              width: 200,
              height: 250,
              child: RotatedBox(
                quarterTurns: -1,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.black38,
                      inactiveTrackColor: Colors.black38,
                      trackHeight: 15.0,
                      thumbColor: Colors.black,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 25)),
                  child: Slider(
                    value: x,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        x = value;
                      });
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
