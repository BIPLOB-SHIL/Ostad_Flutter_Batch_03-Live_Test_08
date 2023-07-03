import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Biplob Shil",
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  dynamic myItems = [
    {"Name":"Biplob Shil","Email":"biplobshil.duet@gmail.com","Phone Number":01937089654},
    {"Name":"Kamal Hossain","Email":"kamalhossin@gmail.com","Phone Number":01937089764},
    {"Name":"Jamal Miah","Email":"jamal@gmail.com","Phone Number":01935439654},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact List"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 5,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        itemCount: myItems.length,
        itemBuilder: (context,index){
          return ListTile(
            onTap: (){
              showTasksItemBottomSheet(index);
            },
              title: Text(myItems[index]['Name']),
          );

        },
      ),

    );
  }
  void showTasksItemBottomSheet(int index){
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child:  Text("Contract Details",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Text("Name:${myItems[index]['Name']}"),
            Text("Email:${myItems[index]['Email']}"),
            Text("Phone Number:${myItems[index]['Phone Number']}"),


          ],
        ),
      );
    },);

  }
}


