void main(){
  int firstNum = 12;
  double secondNum = 3.1416;
  int result = firstNum + secondNum.toInt();
  double secondResult = firstNum + secondNum;
  print(result);
  print(secondResult.toStringAsFixed(2));
  String name = secondResult.toString();
  print(name.runtimeType);
  print(name);
  double resultThree = 12 + double.parse(name);
  print(resultThree);
  int b = int.parse('123');
  print(b + 10);
  int c = int.tryParse('15f') ?? 0;
  print(c+5);
}