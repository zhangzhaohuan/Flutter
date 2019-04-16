import 'package:flutter/material.dart';
class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}
class DateTimeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('******* -DateTime-********');
    var now = DateTime.now();
    print(now);
    print(now.year);
    print(now.month);
    print(now.day);
    print(now.hour);
    print(now.minute);
    print(now.second);
    print(now.millisecondsSinceEpoch);
    print(new DateTime.utc(1989, DateTime.november, 9));
    print(DateTime(2019));
    print(DateTime(2019,1,2));
    print(DateTime.parse('2000-01-01 00:00:00Z'));
    var utc = DateTime.utc(2019);
    print(utc);
    print(now.add(new Duration(days: 1)));
    print(now.subtract(new Duration(days: 18)));
    print(DateTime(2019,1,2,1).difference(DateTime(2019,1,2,2)).abs().inDays);

    var short = const Line(1);
    var long = const Line(100);
    print(short.compareTo(long));

    return Container(
      child: Text('DateTime'),
    );
  }
}
