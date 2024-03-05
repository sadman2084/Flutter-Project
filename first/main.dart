import 'dart:io';
import 'user.dart';

void main(){
  print("Enter user name");
  String? userNameInput = stdin.readLineSync();
  print("Enter password");
  String? userPasswordInput = stdin.readLineSync();
  bool hasLoginSucceed=user.login(userNameInput!,userPasswordInput!);
  if(hasLoginSucceed){
    print("login successful");
  }else{
    print("login failed");
  }

}
