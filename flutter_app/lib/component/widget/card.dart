import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('card demo1'),
      ),
      body: new Card(
        child: new CardDemo1(),
      ),
    );
  }
}

class CardDemo1 extends StatefulWidget {
  @override
  _CardDemo1State createState() => _CardDemo1State();
}

class _CardDemo1State extends State<CardDemo1> {
   List data = <Map>[
    {'name': '张兆欢01', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': true},
    {'name': '张兆欢02', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': true},
    {'name': '张兆欢03', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢04', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢05', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢06', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢07', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢08', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢09', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢10', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢11', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢12', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
    {'name': '张兆欢13', 'address': '山东省山东市山东县山东镇山东村山东号', 'collected': false},
  ];
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          final collected = data[index]['collected'];
          return  renderItem(data,index);
        },
      ),
    );
  }
  Widget renderItem(data,index){
    final collected = data[index]['collected'];
    return new ListTile(
      leading: new Icon(Icons.account_box),
      title: new Text(data[index]['name']),
      subtitle: new Text(data[index]['address']),
      trailing: new Icon(
        Icons.check_circle,
        color: collected ? Colors.green : Colors.red,
      ),
      onTap: (){
        setState(() {
          data[index]['collected'] = !collected;
        });
      },
    );
   }

}
