import 'dart:io';

import 'admin_info.dart';
import 'authenticate_user.dart';
import 'users_info.dart';

AdminInfo adminInfo = AdminInfo();
UserInfo userInfo = UserInfo();
AuthenticateUser authenticateUser = AuthenticateUser();

bool isContinue = true;
void main(List<String> args) {
  print('');
  print('||||||| Welcome to Student Management System |||||||');

  while (isContinue) {
    print('');
    print('press 1 to Admin Panel');
    print('press 2 to Users Panel');
    print('press 3 to Login Panel');
    print('press 4 to Exit Program');

    // Admin / Users / Students Panel/ Login Panel Options

    var userInput = stdin.readLineSync();

    if (userInput == '1') {
      adminInfo.adminPanel();
    } else if (userInput == '2') {
      userInfo.userPanel();
    } else if (userInput == '3') {
      print('You are admin press 1');
      print('You are user  press 2');

      var userCheck = stdin.readLineSync()!;

      if (userCheck == '1') {
        var userName = stdin.readLineSync()!;
        var userPassword = stdin.readLineSync()!;

        authenticateUser.isLogin(
            userName, userPassword, adminInfo.admin, 'admin');
      } else if (userCheck == '2') {
        var userName = stdin.readLineSync()!;
        var userPassword = stdin.readLineSync()!;

        authenticateUser.isLogin(
            userName, userPassword, userInfo.users, 'user');
      }
    } else {
      print('Exit Application');
      isContinue = false;
    }
  }
}
