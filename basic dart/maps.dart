import 'dart:io';

void main(){
  Map<int,String> studentList = {
    1 : 'asif',
    2 : 'Mehedi',
    3 : 'Rahat',
    4 : 'Afnan'
  };
  print(studentList[4]);
  print(studentList);
  studentList[33] = 'Ronaldo';
  print(studentList);
  studentList.addAll({
    100 : 'Messi',
    101 : 'Neymar'

  });
  print(studentList);
  print(studentList.keys);
  print(studentList.length);
  print(studentList.values);
}
//Maps constructor
/*
void main(){
var student = new Map();
student ['name']='Tom';
student ['age']= 24;
print(student);
}

*/