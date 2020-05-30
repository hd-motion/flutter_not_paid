import 'package:flutter/material.dart';
import 'package:not_paid/not_paid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotPaid(
      dueDate: DateTime(2020, 5, 12),
      deadlineDays: 20,
      child: MaterialApp(
        title: 'Not-Paid Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DemoPage(title: 'Not Paid Demo Page'),
      ),
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
