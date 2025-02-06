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
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amber,
                ),
                Column(
                  children: [
                    Text("RaFiuL RaZu"),
                    Text("01763133766"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
