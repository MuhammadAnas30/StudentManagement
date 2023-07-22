

import 'dart:io';

import 'student_info.dart';

class AuthenticateUser{


String authenticateUser(String username, String password,  List<Map<String,String>> lists, String role) {
  
 if (role == 'admin'){
 Map<String, String> adminUser = lists.firstWhere((admin) => admin["name"] == username, orElse: () => {});
  
  if (adminUser.isNotEmpty && adminUser["password"] == password) {
    return "admin"; 
  }else{
    return '';
  }

 }else{

 Map<String, String> user = lists.firstWhere((user) => user["name"] == username, orElse: () => {});
 if (user.isNotEmpty && user["password"] == password) {
    return "user"; 
  } else{
    return '';
  }

 }


}

  void isLogin(userName, userPassword, lists, role) {
    
  String rol =  AuthenticateUser().authenticateUser(userName, userPassword, lists, role);
   
  if (rol == "user") {
 
    print("User login successful.");
     print('press 1 to Student Panel');
    var stu = stdin.readLineSync();
    if (stu == '1'){

    StudentInfo().studentPanel(rol);

    }else{
      print('');
      print('Go To Home');
    }

  } else if (rol== "admin") {
   
    print("Admin login successful.");
     print('press 1 to Student Panel');
    var stu = stdin.readLineSync();
     if (stu == '1'){
     
     StudentInfo().studentPanel(rol);

    }else{
      print('');
      print('Go To Home');
    }


  } else {

    print("Invalid username or password.");
   }
}

}