

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
      body:Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }


}


