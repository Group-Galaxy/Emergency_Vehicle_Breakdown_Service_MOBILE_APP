// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textController = TextEditingController();

  String userSend = '';

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    //var subhead;
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Amalie Perera",
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    "Online",
                    style: Theme.of(context).textTheme.subtitle2?.apply(
                          color: Colors.green,
                        ),
                  )
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Display text
              // ignore: avoid_unnecessary_containers
              Expanded(
                child: Container(
                  // ignore: prefer_const_constructors
                  child: Center(
                    child: Text(
                      userSend,
                      style: const TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    hintText: 'Type Massage',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    userSend = _textController.text;
                  });
                },
                color: Colors.blue,
                child: const Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
