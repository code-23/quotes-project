import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "concepts", debugShowCheckedModeBanner: false, home: Quotes()));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<String> quotes = [
    "The secret to life is to love who you are - warts and all",
    "Look for opportunities in every change in your life",
    "Life really does begin at forty"
  ];
  Widget quotetemplate(String quot) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(quot),
          ),
          TextButton.icon(
              onPressed: () {
                setState(() {
                  quotes.remove(quot);
                });
              },
              icon: Icon(Icons.delete),
              label: Text("deletequote"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AWESOME QUOTES"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: quotes.map((quot) => quotetemplate(quot)).toList(),
      ),
    );
  }
}
