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
   HomeScren({Key? key}) : super(key: key);
  List<Map> studentInfo=[
    {"Name":"Razu","Id":"102621","Dept":"CSE"},
    {"Name":"Sazu","Id":"102622","Dept":"CSE"},
    {"Name":"Hazu","Id":"102623","Dept":"CSE"},
    {"Name":"RaFi","Id":"102624","Dept":"CSE"},
    {"Name":"RaFiul","Id":"102625","Dept":"CSE"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body:ListView.builder(
        itemCount:studentInfo.length,
          itemBuilder:(context, index){
            return ContactCard(name:studentInfo[index]["Name"],phone:studentInfo[index]["Id"],);
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
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0WxAubQyY-WaN8W-esXaxi_SfTKpjHYIf9w&s"),
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


