

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
      body:Stack(
        clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              width:double.infinity,
              color: Colors.red,
              child: Text("DaTa"),
            ),
            Positioned(
              bottom: -40,
                left: 30,
                child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                )),
          ],
        ),
    );
  }


}


