import 'package:chat_app/widgets/list.dart';
import 'package:chat_app/widgets/reset.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class registerPage extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var passwordEditingController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(controller: emailEditingController,
              decoration: InputDecoration(hintText: ("Enter your Email")),),
            SizedBox(height: 8,),
            TextField(controller: passwordEditingController,
              decoration: InputDecoration(hintText: "Enter your password"),obscureText: true,),
            SizedBox(height: 8,),
            TextButton(onPressed: (){
              _auth.createUserWithEmailAndPassword(email: emailEditingController.text, password: passwordEditingController.text).then((value) {
                final snackBar = SnackBar(
                  content: const Text('Email sucessfully registered'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );

                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.pop(context);
              }).catchError((onError){
                final snackBar = SnackBar(
                  content: Text(onError.message!),
                );
              });
            }, child: Text("Register"),style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white)),)
          ],
        ),
      ),
    );
  }
}
