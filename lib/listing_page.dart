import 'package:first_demo_app/utils/constants.dart';
import 'package:first_demo_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listing Page')),
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
        GestureDetector(onTap: () {
          Navigator.pushNamed(context, AppRoutes.loginRoute);
        }, child: Text('Login-Page',style:TextStyle(color: Colors.white, fontSize: 22.0,),)),
          SizedBox(height: 20,),
          GestureDetector(onTap: () {
            Navigator.pushNamed(context, AppRoutes.musicRoute);
          }, child: Text('Music-Page', style:TextStyle(color: Colors.white, fontSize: 22.0,),)),
          SizedBox(height: 20,),
          GestureDetector(onTap: () {
            Navigator.pushNamed(context, AppRoutes.diceRoute);
          }, child: Text('Dice-Page', textDirection: TextDirection.ltr, style:TextStyle(color: Colors.white, fontSize: 22.0,),)),
          SizedBox(height: 20,),
          GestureDetector(onTap: () {
            Navigator.pushNamed(context, AppRoutes.birdRoute);
          }, child: Text('Flying Birds-Page', style:TextStyle(color: Colors.white, fontSize: 22.0,),)),
          SizedBox(height: 20,),
          GestureDetector(onTap: () {
            Navigator.pushNamed(context, AppRoutes.destiniRoute);
          }, child: Text('Destini-Page', style:TextStyle(color: Colors.white, fontSize: 22.0,),)),
          SizedBox(height: 20,),
          GestureDetector(onTap: () {
            Navigator.pushNamed(context, AppRoutes.bmiRoute);
          }, child: Text('BMI-Page', style:TextStyle(color: Colors.white, fontSize: 22.0,),)),
    ]),
      ),);
  }
}
