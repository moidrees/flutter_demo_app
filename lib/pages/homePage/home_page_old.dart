import 'package:flutter/material.dart';

class HomePageOld extends StatelessWidget {
  const HomePageOld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Container(
          child: Row(
            children:  [
              GestureDetector(
                onTap: () {
                  _showToast(context);
                },
                child: const Image(
                  image: AssetImage('images/ic_back.jpg'),
                  width: 24,
                  color: Colors.white,),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "AppBar Title",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Our Image",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Image(
                image: NetworkImage(
                    'https://www.w3schools.com/w3css/img_nature.jpg')),
            const SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () => _showToast(context),
              child: const Text(
                'Show toast',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Sending Message"),
    ));
  }
  
}