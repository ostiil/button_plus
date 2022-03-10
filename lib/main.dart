import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor:  Colors.indigoAccent,
     appBar:AppBar(
       title: Text('Счетчик'),
       centerTitle: true,

     ),
body: Center(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      
      IconButton(iconSize: 50, onPressed: (){
      setState(() {
        count++;
      });
    }, 
    
     icon: Icon(Icons.add)),
     SizedBox(height: 90),
      Text('$count', style: TextStyle(color: Colors.red,fontSize: 50)),
      SizedBox(height: 90),
      IconButton(iconSize: 50, onPressed: (){
      setState(() {
        count--;
      });
    }, icon: Icon(Icons.remove)),
    ],
  )
    
  ),
),

     );

  }


}