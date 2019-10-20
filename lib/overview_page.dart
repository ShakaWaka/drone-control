import 'package:dronese/widgets/drop_button.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class OverViewPage extends StatefulWidget {
  @override
  _OverViewPageState createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
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
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()));

            },
          ),
          IconButton(
            icon: Icon(Icons.settings_backup_restore),
            onPressed: () {

            },
          ),
        ],
        title: Container(
          width: 200,
          color: Colors.green,
          child: Align(
              child: Text("OVERVIEW")),
        ),
        centerTitle: true,

      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/drone_stch.png"),
                  fit: BoxFit.contain
              ),
            ),
          ),

        ],
      ),
    );
  }
}
