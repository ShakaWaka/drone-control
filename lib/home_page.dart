import 'package:dronese/widgets/main_grid.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 200,
          color: Colors.green,
          child: Align(
              child: Text("HOME")),
        ),
        centerTitle: true,

      ),
      body: Center(
        child: MainGrid()
      ),
    );
  }
}
