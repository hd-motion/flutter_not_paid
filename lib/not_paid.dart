library not_paid;

import 'package:flutter/material.dart';

class NotPaid extends StatefulWidget {
  final Widget child;
  final DateTime dateTime;
  NotPaid({@required this.child, @required this.dateTime});
  _NotPaidState createState() => _NotPaidState();
}

class _NotPaidState extends State<NotPaid> {
  //TODO: Implement opacity logic
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: widget.child,
    );
  }
}
