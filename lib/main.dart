import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: QuoteList(),
)
);

class QuoteList extends StatefulWidget {

  List<String> quotes = [
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: widget.quotes.map((quote) =>Text(quote)).toList(),
        ),
    );
  }
}
 