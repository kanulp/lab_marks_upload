import 'package:flutter/material.dart';
import 'package:lab_marks_upload/src/app.dart';
import 'package:lab_marks_upload/src/data/Student.dart';
import 'package:lab_marks_upload/src/home/edit_marks.dart';

class StudentListPage extends StatelessWidget {
  List<Student> list = getStudentList();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lab Marks Demo'),),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) { 
        return ListTile(
          leading: Text(list[index].id.toString()),
          title: Text(list[index].name),
          subtitle: Text(list[index].email),
          trailing: Text(list[index].marks.toString()+"/50"),
          onTap :(){ Navigator.push(context, MaterialPageRoute(builder:(context)=>EditMarksPage(true,"13491")));},
        );
       },),
    );
  }

  static List<Student> getStudentList(){
    List<Student> list = List<Student>();
    list.add(Student(1,"Karan","k@k.com",40.0));
    list.add(Student(2,"Karan 2","k@k.com",50.0));
    list.add(Student(3,"Karan 3","k@k.com",60.0));
    list.add(Student(4,"Karan 4","k@k.com",70.0));
    list.add(Student(5,"Karan 5","k@k.com",30.0));
    list.add(Student(6,"Karan 6","k@k.com",30.0));
    list.add(Student(7,"Karan 7","k@k.com",20.0));
    list.add(Student(8,"Karan 8","k@k.com",40.0));
    return list;
  }
}