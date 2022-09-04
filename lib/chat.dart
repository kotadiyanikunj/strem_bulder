import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {

  Stream<String>abc1()
  async* {

    while(true)
    {
      await Future.delayed(Duration(seconds: 1));
      DateTime d=DateTime.now();
      String time="${d.hour}:${d.minute}:${d.second}";
      yield time;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Center(
          child: StreamBuilder(
            stream: abc1(),
            builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting)
              {
                return Center( child: CircularProgressIndicator(),);
              }
              if(snapshot.hasData)
              {
                String l=snapshot.data as String;
                return Center(
                  child: Text("$l",style: TextStyle(fontSize: 30),),
                );
              }
              else
              {
                return Center(
                  child: Text("00 : 00 : 00"),
                );
              }
            },),
        ),

      ),
    );
  }
}
