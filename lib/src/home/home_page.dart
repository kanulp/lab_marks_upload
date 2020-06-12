import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:lab_marks_upload/src/data/Subject.dart';
import 'package:lab_marks_upload/src/home/edit_marks.dart';
import 'package:lab_marks_upload/src/home/student_list_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String barcode = "";
  
  @override
  Widget build(BuildContext context) {
  List<Subject> list= getList();

    return Scaffold(
          appBar: new AppBar(
            title: new Text('Lab_Marks_Demo'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.camera_enhance),
            onPressed : scan 
          ),
          body: 
            ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) { 
              return ListTile(title: Text(list[index].getSubject()),
              subtitle: Text(list[index].getSemester()),
              trailing: Icon(Icons.navigate_next),
                onTap :(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentListPage()));}
              );
             },)
      );
    }
//https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=karan
    Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
      Navigator.push(context, MaterialPageRoute(builder:(context)=>EditMarksPage(true,barcode)));

    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }

    List<Subject> getList(){
    List<Subject> list = new List<Subject>();
    list.add(Subject("Java","Sem 1"));
    list.add(Subject("Java SE","Sem 2"));
    list.add(Subject("Java EE","Sem 3"));
    list.add(Subject("Requirement Analysis","Sem 2"));
    list.add(Subject("Data Structure","Sem 2"));
    return list;
  }
}