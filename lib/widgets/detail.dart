import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({Key? key}) : super(key: key);

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  var messages = [
    {
      "sender":"AAA",
      "message":"Jom makan",
      "time":"12.15pm"
    },
    {
      "sender":"BBB",
      "message":"Jom! Makan mana?",
      "time":"12.16pm"
    },
    {
      "sender":"AAA",
      "message":"Tak kisah",
      "time":"12.17pm"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  itemCount: messages.length,
              itemBuilder: (context,index){
                    return ListTile(
                    title: Text(messages[index]["message"]!),
                      subtitle: Text("${messages[index]["sender"]!}- ${messages[index]["time"]!}"),
                    );
              }),
            ),
            Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(hintText: "Enter Message"),)),
                TextButton(onPressed: (){}, child: Text("Send"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent),foregroundColor: MaterialStateProperty.all(Colors.white)),),
              ],
            ),
          ],
        ),
      ),


    );
  }
}
