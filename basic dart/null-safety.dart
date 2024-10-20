void main(){
  //null
  int? a;
  print(a);
  int b=10;
  int result=(a??12)+b;
  print(result);
}