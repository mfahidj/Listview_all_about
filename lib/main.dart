import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _names = ['abd','bbb','abd','bbb','abd','bbb','abd','bbb','abd','bbb',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('ListView...'),
      ),
        //reverse: true,
        /*children:  const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('One', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('two', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('three', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('four', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('five', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('six', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('seven', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('eight', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('nine', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('ten', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          ),


        ],*/
        // ListView builder method
      body: ListView.builder(itemBuilder: itemBuilder,
      itemCount: _names.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 100.0,
      ),

    );
  }

  Widget? itemBuilder(BuildContext context, int index) {

    return  Padding(padding: EdgeInsets.all(16.9),
        child: Text(_names[index], style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400))
    );

  }

}
