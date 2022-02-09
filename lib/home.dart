import 'dart:ui';
import 'package:random_quote_generator/get.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      body:SafeArea(
        child:Container(
          decoration: BoxDecoration(
            image:DecorationImage(
                image:AssetImage('assets/img ($p).jpg'),
                fit: BoxFit.cover
            ),
          ),
        child: Container(


          child: Center(

              child:FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/loading'); },
                icon: Icon(Icons.arrow_forward),
                label: Text('Proceed ',
                        style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                ),

              )
          ),
        ),
        ),

      ),


    );
  }
}
