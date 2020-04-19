import 'package:flutter/material.dart';
import 'Qoutes.dart';
import 'QouteCard.dart';

void main() => runApp(MaterialApp
(
  home:Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List <Qoutes> qoute = 
  [
    Qoutes(author: 'Patrick bet david', text:'Hustle and work for 40 hours week'),
    Qoutes(author: 'Robert Green', text:'Trust the process of mastery'),
    Qoutes(author: 'Steve Jo11111bs', text:'Poke the world')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: Text('Awesome Qoutes'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column
      (
        children: qoute.map((qoutes) => QouteCard
        (
          qoutes: qoutes,
          delete: () 
          {
            setState(() {
              qoute.remove(qoutes);
            });
          }
        )).toList(),
      ),
    );
  }
}

