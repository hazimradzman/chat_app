import 'package:chat_app/widgets/detail.dart';
import 'package:flutter/material.dart';

class listPage extends StatefulWidget {
  const listPage({Key? key}) : super(key: key);
//this can only be use if take from other class
  @override
  State<listPage> createState() => _listPageState();
}

class _listPageState extends State<listPage> {
  // List of Map
  var employees = [
    {
      "name":"Muzaffar",
      "department":"Admin"
    },
    {
      "name":"Saiful",
      "department":"I.T",
    },
    {
      "name":"Amira",
      "department":"Marketing"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee List"),),
      body: ListView.builder(
    itemCount: employees.length,
    itemBuilder: (context,index){
        return Card(
          child: ListTile(
          title: Text(employees[index]["name"]!),
    subtitle: Text(employees[index]["department"]!),
            trailing: Icon(Icons.chevron_right),
            onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>detailPage()));
            },
          ),
        );

    },
    )
    );
  }
}


