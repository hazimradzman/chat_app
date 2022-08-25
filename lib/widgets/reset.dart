import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class resetPage extends StatelessWidget {
  var emailEditingController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(hintText: "Enter your Email"),
            controller: emailEditingController,),
            SizedBox(height: 48,),
            TextButton(onPressed: (){
              _auth.sendPasswordResetEmail(email: emailEditingController.text).then((value){
                print("Email sucessfully sent");
              }).catchError((err){
                print(err);
              });
            }, child: Text("Reset Password"),style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent),foregroundColor: MaterialStateProperty.all(Colors.white)),),
          ],
        ),
      ),
    );
  }
}
