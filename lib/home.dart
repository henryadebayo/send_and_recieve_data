import 'package:flutter/material.dart';
import 'package:send_and_recieve_data/services/repository.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  get response => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Send and Receive Data"
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("$res"),
          Text("$error"),
          IconButton(onPressed:(){
            setState((){
              postData();
            });
          }, icon: Icon(Icons.connect_without_contact),),
         // TextButton(onPressed: postData(), child: child)
        ],
      ),
    );
  }
}
