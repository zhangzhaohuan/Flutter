/*
* 构造函数
* 默认构造函数：如果你不声明构造函数，系统将提供一个默认的构造函数。默认的构造函数没有参数，而且将调用父类的无参数的构造函数。
* 构造函数不能继承，调用父类构造函数：super()；
* 命名构造函数：通过命名构造函数实现一个类可以有多个构造函数，或者提供更有针对性的构造函数；
* 可重定向构造函数
* 调用父类非默认构造函数：执行顺序：初始化列表->父类构造函数->当前类构造函数
* */
import 'package:flutter/material.dart';

class ConstructorDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    var bb = new Employee.change('han');
//    var aa = new Employee('zhang','huan');
//    var emp = new Employee.fromJson({'name':"zhangsan"});
  var cc = new Employee.changeToFromJson({'name':"li"});
//    if (emp is Person) {
//      // Type check
//      emp.firstName = 'Bob';
//    }
//    (emp as Person).firstName = 'Bob';
    return Container(
      child: Text('construtor'),
    );
  }
}

class Person {
  String firstName;
  Person(){
    print('in Person');
  }
  Person.fromJson(Map data) {
    print('in Person fromJson');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  String x;
  String y;
  Employee(String x,String y){
    this.x = x;
    this.y = y;
    print('in Emplyee:$x $y');
  }
  Employee.fromJson(Map data) :x=data['name'], super.fromJson(data) {
    //执行顺序：初始化列表->执行父类构造函数->当前类构造函数
    //即x=data['name']->super.fromJson(data)->print
    print('in Employee fromJson');
    print(x);
  }

  //可重定向构造函数
  Employee.change(String x):this(x,'congcong');
  Employee.changeToFromJson(Map data):this.fromJson(data);
}

