import 'package:flutter/material.dart';

import 'Screen/Home.dart';
import 'Screen/PortFolio.dart';
import 'Screen/test.dart';


void main() {
  runApp(new MaterialApp(
      home: RunApp(),
      debugShowCheckedModeBanner: false
      ),
         );
}
class RunApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RunAppPageState();
  
}

class _RunAppPageState extends State<RunApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
        );
  }
}
