import 'package:flutter/material.dart';
import 'package:strem_bulder/call.dart';
import 'package:strem_bulder/chat.dart';

import 'Status.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.amber,

    ),
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),

          title: Text("Watsapp",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.bold),),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Chat",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.bold),),
              ),
              Tab(
                child: Text("Call",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.bold),),
              ),
              Tab(
                child: Text("Status",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.bold),),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            chat(),
            call(),
            Status(),
          ],
        ),
      ),
    );
  }
}
