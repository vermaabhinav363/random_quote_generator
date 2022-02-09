import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:math';
import 'package:random_quote_generator/loading.dart';
import 'package:random_quote_generator/get.dart';


class get_quote extends StatefulWidget {
  const get_quote({Key? key}) : super(key: key);

  @override
  _get_quoteState createState() => _get_quoteState();
}


class _get_quoteState extends State<get_quote> {



  @override

  Widget build(BuildContext context) {
    Map data=ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(

      backgroundColor: Colors.grey[900],
    body: SafeArea(
      child: Container(
        child: Container(


          decoration: BoxDecoration(
          image:DecorationImage(
              image:AssetImage('assets/img ($p).jpg'),


          fit: BoxFit.cover
           ),
          ),
          child: Center(

              child: Column(
                children: [

                  Center(
                    child: FlatButton.icon(
                          onPressed: () {
                          setState(() {
                            p++;
                            p%=81;
                            p++;
                          });
                          Navigator.pushNamed(context, '/loading'); },
                        icon: Icon(Icons.arrow_forward),
                        label: Text('Next',
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        ),

                      ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
                      child: Column(
                        children: [
                          Center(
                            child: Text('  ${data['quote']}\n\n ',
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                  fontSize: 20,
                                  letterSpacing: 2,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Center(
                            child: Text('  ${data['author']} ',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                          ),
                        ],
                      )

                  ),
                ],
              ),

          ),
      ),
      ),

    ),


    );
  }
}

