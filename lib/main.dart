import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScren(),
    );
  }
}

class HomeScren extends StatelessWidget {
  const HomeScren({Key? key}) : super(key: key);

  Mysnakbar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body:ListView(
        children: [
          Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("RaFiuL RaZu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                    Text("01763133766"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
