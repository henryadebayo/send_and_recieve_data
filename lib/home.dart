import 'package:flutter/material.dart';
import 'package:send_and_recieve_data/services/repository.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
        children: [
          Text("$postData().response.statusCode"),
          Text("$postData().catch.statusCode"),
          IconButton(onPressed: postData(), icon: Icon(Icons.connect_without_contact),),
          TextButton(onPressed: postData(), child: child)
        ],
      ),
    );
  }
}
