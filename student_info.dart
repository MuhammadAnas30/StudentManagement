import 'dart:io';

import 'crud_operation.dart';

class StudentInfo {
  List<Map<String, String>> student = [];

  void studentPanel(role) {
    CRUDOperation crud = CRUDOperation();

    //Student Panel Options

    print('press 1 to Create Student');
    print('press 2 to Read Student');
    print('press 3 to Update Student');
    print('press 4 to Delete Student');

    var studentInput = stdin.readLineSync();

    if (studentInput == '1') {
      print('Please Enter Name');
      var name = stdin.readLineSync()!;
      print('Please Enter FatherName');
      var fathername = stdin.readLineSync()!;
      print('Please Enter Age');
      var age = stdin.readLineSync()!;
      print('Please Enter ObtainMarks');
      var obtainMarks = stdin.readLineSync()!;
      print('Please Enter TotalMarks');
      var totalMarks = stdin.readLineSync()!;

      Map<String, String> students = {
        'name': name,
        'fathername': fathername,
        'age': age,
        'obtainMarks': obtainMarks,
        'totalMarks': totalMarks
      };

      crud.createData(list: student, lists: students);
    } else if (studentInput == '2') {
      crud.readData(student);
    } else if (studentInput == '3') {
      print('Please Enter Index');
      var index = int.parse(stdin.readLineSync()!);
      print('Please Enter Key');
      var key = stdin.readLineSync();
      print('Please Enter Value');
      var value = stdin.readLineSync();

      crud.updateData(
          index: index, key: key, newValue: value, lists: student, role: role);
    } else {
      var index = int.parse(stdin.readLineSync()!);
      crud.deleteData(student, index);
    }
  }
}
