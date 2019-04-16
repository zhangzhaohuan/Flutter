import 'package:flutter/material.dart';

class ExtendsDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print(Dog('dog_01','12').age);

    //泛型01
    print(Person('19'));

    //泛型02
    print(Person2(Age(18)));

    print(Person2(SonAge(17)));


    return Container(
      child:Text('demo1'),
    );
  }
}


//继承
class Animal {
  final String name ;
  Animal(this.name);
}

class Dog extends Animal{
//  Dog(String name):super(name);
  String age ;
  Dog(String name,String age):age = age,super(name);
}

//泛型用于类01
class Person<Age> {
  final Age age;
  Person(this.age);
}

//泛型用于类02
class Age<T> {
  T age;
  Age(this.age);
}

class SonAge extends Age{
  SonAge(age):super(age);
}

class Person2<T extends Age > {
  final T age;
  Person2(this.age);
}

//泛型用于函数01

