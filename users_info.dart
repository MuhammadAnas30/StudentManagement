import 'dart:io';

import 'crud_operation.dart';

class UserInfo {
  List<Map<String, String>> users = [];

  void userPanel() {
    CRUDOperation crud = CRUDOperation();

    //User Panel Options
    print('press 1 to Create User');
    print('press 2 to Read User');
    print('press 3 to Update User');
    print('press 4 to Delete User');

    var userInput = stdin.readLineSync();

    if (userInput == '1') {
      print('Please Enter Name');
      var name = stdin.readLineSync()!;
      print('Please Enter Password');
      var password = stdin.readLineSync()!;

      if (name.isNotEmpty && password.isNotEmpty) {
        Map<String, String> user = {'name': name, 'password': password};

        crud.createData(lists: user, list: users);
      } else {
        print('Please Fill All Fileds');
      }
    } else if (userInput == '2') {
      crud.readData(users);
    } else if (userInput == '3') {
      print('Please Enter Index');
      var index = int.parse(stdin.readLineSync()!);
      print('Please Enter Key');
      var key = stdin.readLineSync();
      print('Please Enter Value');
      var value = stdin.readLineSync();

      crud.updateData(index: index, key: key, newValue: value, lists: users);
    } else {
      var index = int.parse(stdin.readLineSync()!);
      crud.deleteData(users, index);
    }
  }
}
