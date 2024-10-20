void main(){
  //Logical and
  int mark = 100;
  if(mark>= 80 && mark<=100){
    print('A+');
  }
  else if (mark>= 70 && mark<80){
    print('A');
  }
  else if (mark>= 60 && mark<70){
    print('A-');
  }
  else if(mark>= 50 && mark<60){
    print('B');
  }
  else if(mark>=40 && mark<50){
    print('C');
  }
  else if (mark>= 33 && mark<40){
    print('D');
  }
  else if (mark>= 0 && mark<33){
    print('F');
  }
  else{
    print('Invalid Mark');
  }
  // logical or
  if(mark == 100 || mark == 50){
    print('This mark is divisible by 50');
  }
  else{
    print('This mark is not divisible');
  }
}