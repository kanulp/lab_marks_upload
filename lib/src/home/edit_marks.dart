import 'package:flutter/material.dart';

class EditMarksPage extends StatelessWidget {
  bool hasDetails=false;
  String id;
  EditMarksPage(bool hasDetails,String id){
    this.hasDetails=hasDetails;
    this.id=id;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Insert/Edit Marks'),),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Id : '),
          Container(height: 50.0 , width: 100.0, child: TextField(controller: TextEditingController(text: id.toString()),))
        ],
        ), 
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
          Text('Name : '),
          Container(height: 50.0 , width: 100.0, child: TextField(controller: TextEditingController(text: hasDetails?"Karan Gajjar":""),))
        ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Email : '),
          Container(height: 50.0 , width: 100.0, child: TextField(controller: TextEditingController(text: hasDetails?"karangajjar.lp@gmail.com":""),))
        ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
          Text('Marks : '),
          Container(height: 50.0 , width: 100.0, child: TextField(controller: TextEditingController(text: hasDetails?"15/20":""),))
        ],
        ),
        SizedBox(
          height: 10.0,
        ),
        RaisedButton(onPressed: () {  },
        child: Text('Submit'),) 
      ],),
    );
  }
}