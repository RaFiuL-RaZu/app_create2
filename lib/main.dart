

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
  const HomeScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Card View Design"),
      ),
      body: ListView(
        children: [
          ContactList(name:"RaFi" ,phone:"01632212211" ,),
          ContactList(name:"RaFiuL",phone: "01632212211",),
          ContactList(name:"Sazu" ,phone: "01632212211",),
          ContactList(name:"Razu" ,phone:"01632212211" ,),
          ContactList(name: "SaFin",phone: "01632212211",),
          ContactList(name: "Sazid",phone: "01632212211",),


        ],
      )
    );
  }


}

class ContactList extends StatelessWidget {
  ContactList({
    Key? key,required this.name, required this.phone,
  }) : super(key: key);
  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor:Colors.white,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s"),
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontWeight: FontWeight.w800),),
              SizedBox(height: 5,),
              Text(phone),
            ],
          )
        ],
      ),
    );
  }
}
