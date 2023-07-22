import 'dart:io';

import 'crud_operation.dart';

class AdminInfo {
  List<Map<String, String>> admin = [];

  void adminPanel() {
    CRUDOperation crud = CRUDOperation();

    //Admin Panel Options

    print('press 1 to Create Admin');
    print('press 2 to Read Admin');
    print('press 3 to Update Admin');
    print('press 4 to Delete Admin');

    var adminInput = stdin.readLineSync();

    if (adminInput == '1') {
      print('Please Enter Name');
      var name = stdin.readLineSync()!;
      print('Please Enter Password');
      var password = stdin.readLineSync()!;

      if (name.isNotEmpty && password.isNotEmpty) {
        Map<String, String> admins = {'name': name, 'password': password};

        crud.createData(lists: admins, list: admin);
      } else {
        print('Please Fill All Fileds');
      }
    } else if (adminInput == '2') {
      crud.readData(admin);
    } else if (adminInput == '3') {
      print('Please Enter Index');
      var index = int.parse(stdin.readLineSync()!);
      print('Please Enter Key');
      var key = stdin.readLineSync();
      print('Please Enter Value');
      var value = stdin.readLineSync();

      crud.updateData(index: index, key: key, newValue: value, lists: admin);
    } else {
      var index = int.parse(stdin.readLineSync()!);
      crud.deleteData(admin, index);
    }
  }
}
