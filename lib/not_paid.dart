library not_paid;

import 'package:flutter/material.dart';

class NotPaid extends StatefulWidget {
  final Widget child;
  final DateTime dueDate;
  final int deadlineDays;
  NotPaid({
    @required this.child,
    @required this.dueDate,
    @required this.deadlineDays,
  });
  _NotPaidState createState() => _NotPaidState();
}

class _NotPaidState extends State<NotPaid> {
  double opacity = 1.0;
  //TODO: Implement opacity logic
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: widget.child,
    );
  }
}
