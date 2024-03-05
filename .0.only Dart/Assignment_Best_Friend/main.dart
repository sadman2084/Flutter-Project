import 'dart:io';
import 'friend.dart';

void main() {
  print("Enter your best friend name : ");
  String? name = stdin.readLineSync();
  print("Enter $name's age : ");
  String? age = stdin.readLineSync();
  print("Enter $name's faculty : ");
  String? faculty = stdin.readLineSync();
  print("Enter $name's id number : ");
  String? id_number = stdin.readLineSync();
  print("Enter $name's registration number : ");
  String? registration_number = stdin.readLineSync();
  print("Enter $name's hometown : ");
  String? hometown = stdin.readLineSync();
  print("Enter $name's height (inch) : ");
  String? height = stdin.readLineSync();
  print("Enter $name's weight (kg) : ");
  String? weight = stdin.readLineSync();

  friend Best_friend = new friend(name!, age!,faculty!,id_number!,registration_number!,hometown!,height!,weight!);
  Best_friend.display();
}
