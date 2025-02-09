

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
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,

          ),
        children: [
          Card(
            color: Colors.amber,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Center(child: Text("Razu")),
            ),
          ),
          Card(
            color: Colors.amber,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Center(child: Text("Razu")),
            ),
          ),
          Card(
            color: Colors.amber,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Center(child: Text("Razu")),
            ),
          ),
          Card(
            color: Colors.amber,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Center(child: Text("Razu")),
            ),
          ),
          Card(
            color: Colors.amber,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Center(child: Text("Razu")),
            ),
          ),

        ],
      ),
    );
  }


}


