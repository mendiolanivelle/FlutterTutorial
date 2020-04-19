import 'package:flutter/material.dart';
import 'Qoutes.dart';

class QouteCard extends StatelessWidget {

  final Qoutes qoutes;

  QouteCard({this.qoutes});

  @override
  Widget build(BuildContext context) {
    return Card
    (
      margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>
          [
            Text
            (
              qoutes.text,
              style: TextStyle
              (
                fontSize: 21,
                color: Colors.black
              ),
            ),
            SizedBox(height: 8,),
            Text
            (
              qoutes.author,
              style: TextStyle
              (
                fontSize: 21,
                color: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}