

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScren(),
    );
  }

}
class HomeScren extends StatelessWidget{
  HomeScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Gird View Design"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          Card(
            color: Colors.green,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Text("GridView"),
            ),
          ),
          Card(
            color: Colors.green,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Text("GridView"),
            ),
          ),
          Card(
            color: Colors.green,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Text("GridView"),
            ),
          ),
          Card(
            color: Colors.green,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Text("GridView"),
            ),
          ),
          Card(
            color: Colors.green,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Text("GridView"),
            ),
          ),
          Card(
            color: Colors.green,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Text("GridView"),
            ),
          ),
          
        ],

      ),
    );
  }


}


