import 'package:flutter/material.dart';
import 'quote.dart';

class Quotecard extends StatelessWidget {
  final quote q;
  final Function delete;
  Quotecard({this.q,this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Text('${q.text}'),
              SizedBox(height:20.0),
              Text('${q.author}'),
              SizedBox(height: 40.0),
              FlatButton.icon(
                onPressed: delete,
                label:Text('Delete'),
                icon: Icon(Icons.delete),
                color: Colors.red,
                textColor: Colors.white,
              ),
            ]
        ),
      ),
    );
  }
}


