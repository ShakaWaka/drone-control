import 'package:flutter/material.dart';

class AlertDial extends StatefulWidget {
  @override
  _AlertDialState createState() => _AlertDialState();
}

class _AlertDialState extends State<AlertDial> {

  bool vis = true;
  Color cor = Colors.red;
  String title = "RETURN TO BASE?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: AlertDialog(
          title: Text(title,textAlign: TextAlign.center,),
          backgroundColor: cor,
          actions: <Widget>[
            Visibility(
              visible: vis ,
              child: FlatButton(child: Text("CANCEL"),),
            ),
            Visibility(
                visible: vis ,
                child: FlatButton(
                  onPressed: (){
                    setState(() {

                      cor = Colors.green;
                      title = "RETURNING";
                      vis = false;

                    });
                  },
                  child: Text("YES"),),
            )
          ],),
      ),
    );
  }
}
