import 'package:flutter/material.dart';
import 'package:random_quote_generator/get_page.dart';
import 'package:random_quote_generator/home.dart';
import 'package:random_quote_generator/loading.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/loading',
      routes:{
        '/get_quote':(context)=>get_quote(),
        '/home':(context)=>Home(),
        '/loading':(context)=>Loading(),
    }
  ));
}

