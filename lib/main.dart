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
      body:ListView.builder(
        itemCount: 5,
          itemBuilder:(context, index){
            return ContactCard(name: "Razu",phone: "018262524",);
          } ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,required this.name, required this.phone,
  }) : super(key: key);
  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green,
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
              SizedBox(height: 5),
              Text(phone),
            ],
          ),
        ],
      ),

    );
  }
}


