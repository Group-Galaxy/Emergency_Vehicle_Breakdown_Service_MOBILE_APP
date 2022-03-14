import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool status = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Checkbox(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value!;
                    });
                  },
                  activeColor: Colors.red,
                  checkColor: Colors.green,
                ),
                Text("Visa"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value!;
                    });
                  },
                  activeColor: Colors.red,
                  checkColor: Colors.green,
                ),
                Text("Master Card"),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name On Card',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Number',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Amount',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Expiration Date',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CVN',
                ),
              ),
            ),
            Divider(color: Colors.black),
            ButtonBar(
              children: [
                RaisedButton(
                  child: Text("Cancel"),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text("Pay"),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
