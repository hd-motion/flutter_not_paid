import 'package:flutter/material.dart';
import 'package:not_paid/not_paid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Not-Paid Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoPage(title: 'Not Paid Demo Page'),
    );
  }
}

class DemoPage extends StatefulWidget {
  DemoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NotPaid(
                child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ))
          ],
        ),
      ),
    );
  }
}
