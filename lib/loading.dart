import 'package:flutter/material.dart';
import 'package:random_quote_generator/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Quote quote = Quote();

  //quote.getQuote();
  @override
  Future<void> get_me() async {
    // TODO: implement initState
    await quote.getQuote();
    print(quote.quote);
    print(quote.author);
    if(quote.quote!="" && quote.author!="")
      {
        Navigator.pushReplacementNamed (context, '/get_quote',arguments: {
          'quote': quote.quote,
          'author':quote.author
        }
        );
      }

  }

  void initState() {
    // TODO: implement initState
    get_me();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(

            children: [
        Center(
        child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
        child: SpinKitFadingCube
          (

            color: Colors.white,

            size: 80.0
        ),
      ),
    ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: Text
                    (
                      'fetching data...',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )

                  ),
                ),
              ),

    ],
    )
    ,
    ),
    );
  }
}
