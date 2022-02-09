import 'package:http/http.dart';
import 'dart:convert';
import 'dart:math';
int p=1;
class Quote{

  List data=[];
  String quote='';
  String author='';
  Random random = new Random();



  Quote();
  Future<void> getQuote() async{
    // simulate network request
    try {
      Response response = await get(
          Uri.parse('https://type.fit/api/quotes/'));
      // print(response.body);
      data = jsonDecode(response.body).toList()  ;
      // print(data);
      int randomNumber = random.nextInt(1642);
      quote=data[randomNumber]['text'];
      author=data[randomNumber]['author'];



    }
    catch(e){
      print('error caught : $e');

    }

  }

}
