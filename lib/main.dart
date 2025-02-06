
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
      home: HomeScren(),
    );
  }

}
class HomeScren extends StatelessWidget{
  const HomeScren({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 30,
                width: 100,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }

}