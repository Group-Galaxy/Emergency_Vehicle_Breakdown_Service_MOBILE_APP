import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List names = [
    "Fedaral 4*4",
    "Tata Battry",
    "ABC Break",
    "Drum Break",
    "Toyoto 4*4",
  ];
  List Price = [
    "LKR 30,000",
    "LKR 12,000",
    "LKR 20,000",
    "LKR 10,000",
    "LKR 25,000",
  ];
  List Quantity = [
    "Qty 4",
    "Qty 2",
    "Qty 2",
    "Qty 1",
    "Qty 1",
  ];
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Orders'),
            leading: Icon(Icons.menu),
            bottom: TabBar(
              tabs: [
                Tab(text: 'New Orders'),
                Tab(text: 'To Deliverd'),
                Tab(text: 'Delivered'),
                Tab(text: 'Cancelled'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 55.0,
                              height: 55.0,
                              color: Colors.green,
                              child: const CircleAvatar(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.green,
                                backgroundImage: NetworkImage(
                                    "	https://media.corporate-ir.net/media_files/IROL/17/176060/Oct18/Amazon%20logo.PNG"),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(names[index],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold)),
                                Text(Price[index],
                                    style:
                                        const TextStyle(color: Colors.black)),
                                Text(Quantity[index],
                                    style:
                                        const TextStyle(color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: FlatButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Text(
                              "View More",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: FlatButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Text(
                              "Chat",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          )));
}
