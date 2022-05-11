import 'dart:html';
import 'dart:isolate';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Testing(),
    );
  }
}

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  List<String> str = ["Task 1", "Task 2", "Task 3", "Task 4 "];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: navDrawer(),
      appBar: AppBar(title: const Text("destboard")), 
       body: SingleChildScrollView(
         child: Column(
           children: [
                Container(
              
              width: MediaQuery.of(context).size.width,
              height: 200,
              padding: new EdgeInsets.all(8.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    padding: new EdgeInsets.all(15.0),
                    child: Text(
                      "MOST PRIORITY TASK",
                      style: TextStyle(
                        letterSpacing: 1.5,
                        color: Colors.red,
                     
                      ),
                    
                    ),
       
                  )),
            ),
             ListView.builder(
               shrinkWrap: true,
               itemCount: str.length,
               itemBuilder: ((context, index) {
               return  CardItem(name: str[index]);
             })),
           ],
         ),
       ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key, required this.name,
  }) : super(key: key);
  final String name;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 250,
    color: Colors.red,
      child: Card(
        child: Text(name),
       
     
      ),
    );
  }
}

          // Container(
            
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   padding: new EdgeInsets.all(8.0),
          //   child: Card(
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(15.0),
          //       ),
          //       child: Container(
          //         padding: new EdgeInsets.all(15.0),
          //         child: Text(
          //           "MOST PRIORITY TASK",
          //           style: TextStyle(
          //             letterSpacing: 1.5,
          //             color: Colors.red,
                   
          //           ),
                  
          //         ),

          //       )),
          // ),