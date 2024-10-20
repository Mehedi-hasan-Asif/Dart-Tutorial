void main(){
  List<String> studentName = ['Rahim','Karim','Rahat','Asif'];
  print(studentName);
  studentName.add('Abdur');
  print(studentName);
  print(studentName.length);
  studentName.addAll(['Tamim','Shakib']);
  print(studentName);
  print(studentName[1]);
  studentName.addAll(['Tamim','Tamim']);
  print(studentName);
  studentName.removeWhere((item) =>item=='Tamim' );
  print(studentName);
  print(studentName.first);
  print(studentName.last);
  studentName.insert(2, 'New');
  print(studentName);
}