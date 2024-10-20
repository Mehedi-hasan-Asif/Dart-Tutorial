void main(){
  /*//initialization/start : condition : increment/decrement
  //Statements
  for(int i =0; i <=100; i =i+1){
    if(i==1){
      continue;
    }
    if (i==50){
      break;
    }
    print('Gen Z $i'); //$ String interpolation
  }
  print('All Okay');*/
  List<String>studentList = ['Asif','Mehedi','Rahat','Afnan'];
  Map<int,String> subjectList ={
    1 : 'Bangla',
    2 : 'English',
    3 : 'Math',
    4 : 'Computer Graphics'
  };

  for(int i =0; i<studentList.length;i++){
    print('The total Student $i => ${(studentList[i])}');
  }
  //for Each
  for(String item in studentList){
    print(item);
  }
  for(String item in subjectList.values){
    print(item);

  }
}