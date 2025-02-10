

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

  List<Map> studentInfo=[
    {"name":"Razu","dept":"CSE","Id":"102621"},
    {"name":"Sazu","dept":"CE","Id":"102621"},
    {"name":"RaFi","dept":"MME","Id":"102621"},
    {"name":"RaKi","dept":"EEE","Id":"102621"},
    {"name":"Raz","dept":"TE","Id":"102621"},
    {"name":"Raz","dept":"TE","Id":"102621"},
    {"name":"Raz","dept":"TE","Id":"102621"},
    {"name":"Raz","dept":"TE","Id":"102621"},
    {"name":"Raz","dept":"TE","Id":"102621"},
    {"name":"Raz","dept":"TE","Id":"102621"},

  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: studentInfo.length,
                  gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder:(context,index){
                    return Card(
                      color: Colors.green,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Center(
                            child: Column(
                              children: [
                                Center(child: Text(studentInfo[index]["name"])),
                                Center(child: Text(studentInfo[index]["dept"])),
                                Center(child: Text(studentInfo[index]["Id"])),

                              ],
                            ),
                          ),
                        ),

                      ),
                    );
                  }
              ),
            ),
          ],

        ),
      ),
    );
  }


}


