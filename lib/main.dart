import 'package:flutter/material.dart';
import 'package:quiz1/design2.dart';

import 'design1.dart';



void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     home: WorkOut(),
    );
  }



}
