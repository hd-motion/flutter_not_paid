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

  @override
  void initState() {
    int daysRemaining = getRemainingDays();
    print(daysRemaining);
    if (daysRemaining < 1) {
      opacity = calculateOpacity(daysRemaining);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: widget.child,
    );
  }

  int getRemainingDays() {
    DateTime currentDate = DateTime.now();
    int daysRemaining = widget.dueDate.difference(currentDate).inDays;
    return daysRemaining;
  }

  double calculateOpacity(int daysRemaining) {
    double opacityValue =
        (widget.deadlineDays + daysRemaining) / widget.deadlineDays;
    if (opacityValue < 0.0) {
      opacityValue = 0.0;
    }
    return opacityValue;
  }
}
