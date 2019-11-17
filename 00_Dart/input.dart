
import 'dart:io';

void main(){

  print('Nhap ten: ');
  String str = stdin.readLineSync();
  print(str);
  print('Nhap tuoi');
  String age = stdin.readLineSync();
  print(int.parse(age));

}