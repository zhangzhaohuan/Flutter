import 'package:flutter/material.dart';
class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  // Override hashCode using strategy from Effective Java,
  // Chapter 11.
  @override
  int get hashCode {
    int result = 17;
    result = 37 * result + firstName.hashCode;
    result = 37 * result + lastName.hashCode;
    return result;
  }
  // You should generally implement operator == if you
  // override hashCode.
  @override
  bool operator ==(dynamic other) {
    print('othjer ${other is Person}');
    if (other is! Person) return false;
    Person person = other;
    return (person.firstName == firstName &&
        person.lastName == lastName);
  }
}
class OverrideOperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // class person
    var p1 = Person('Bob', 'Smith');
    var p2 = Person('Bob', 'Smith');
    var p3 = 'not a person';
    print(p1.hashCode);
    print(p2.hashCode);
    print(p1==p2);
    print(1>11);
    return Container(
      child: Text('OverrideOperator'),
    );
  }
}
