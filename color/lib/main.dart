import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title = 'My app';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  Color bgcolor = Colors.blue;
  List<Color> bg = [Colors.red,Colors.green,Colors.yellow,Colors.orange];


  void click() {
    setState(() { 
      bgcolor = bg[index%bg.length];
      index++;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        
        title: Text("color change"),
        backgroundColor: Colors.green,
        ),
        backgroundColor: bgcolor,
      
      body: Center(
      child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            const Text(
              'You have pushed the button ',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: click, child: Text("click"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:click,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
