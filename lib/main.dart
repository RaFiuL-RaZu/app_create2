

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
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width:double.infinity,
              color: Colors.green,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:120),
            itemBuilder: (context,index){
              return Card(
                color: Colors.amber,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(child: Text("Razu")),
                ),
              );
            },
          ),
        ],
      ),
    );
  }


}


