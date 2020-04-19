import 'package:flutter/material.dart';
import 'Qoutes.dart';

void main() => runApp(MaterialApp
(
  home:Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List <Qoutes> qoutes = 
  [
    Qoutes(author: 'Patrick bet david', text:'Hustle and work for 40 hours week'),
    Qoutes(author: 'Robert Green', text:'Trust the process of mastery'),
    Qoutes(author: 'Steve Jobs', text:'Poke the world')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: Text('Awesome Qoutes'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Column
      (
        children: qoutes.map((qoutes) => Text('${qoutes.text} - ${qoutes.author}')).toList(),
      ),
    );
  }
}