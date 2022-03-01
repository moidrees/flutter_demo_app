import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Home Page",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Container(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Refresh",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ],
          )),
      body: const Center(
          child: Text(
        "Home Page",
        style: TextStyle(fontSize: 25, color: Colors.black),
      )),
    );
  }
}
