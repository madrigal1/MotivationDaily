import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart' ;
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<quote> quotes =[
    quote(author:'William James',text:'Act as if what you do makes a difference. It does.'),
    quote(author:'Winston Churchhill',text:'Success is not final, failure is not fatal: it is the courage to continue that counts.'),
    quote(author:'Theodore Roosevelt',text:'Believe you can and you"re halfway there.')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor:Colors.grey[400],
        elevation:0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: quotes.map((quote) => Quotecard(
                  q:quote,
                  delete: () {
                       setState(() {
                           quotes.remove(quote);
                       });
                  }
              )).toList(),
             ),
      ),
    );
  }
}





