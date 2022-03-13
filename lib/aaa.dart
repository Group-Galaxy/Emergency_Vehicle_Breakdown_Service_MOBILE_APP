import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: width,
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: width * 0.6,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.date_range),
                            hintText: 'What is date?',
                            labelText: 'Date *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.6,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'What is your service Id?',
                            labelText: 'Service Provider ID *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.6,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'What is your User ID?',
                            labelText: 'User ID *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.6,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'What is your user name?',
                            labelText: 'User Name *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.6,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.description),
                            hintText: 'What is problem?',
                            labelText: 'Vehicle Fault *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                      ),
                      FlatButton(
                        child: const Text('Pay Now',
                            style: TextStyle(color: Colors.black)),
                        color: Colors.red, // background
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('Cancel',
                            style: TextStyle(color: Colors.black)),
                        color: Colors.red, // background
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
