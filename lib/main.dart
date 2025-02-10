

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
      body: GridView.builder(
        itemCount: 10,
          gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
          ),
          itemBuilder:(context,index){
            return Card(
              color: Colors.green,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Text("GridView"),
              ),
            );
          }
      ),
    );
  }


}


