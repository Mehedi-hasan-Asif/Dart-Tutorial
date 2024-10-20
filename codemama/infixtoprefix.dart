import 'dart:collection';
import 'dart:io';

String infixToPrefix(String infix) {
  //reverse the infix expression and replace "(" with ")" and vice versa
  String reversedInfix = infix
      .split("")
      .reversed
      .join("")
      .replaceAll("(", "replaceChar")
      .replaceAll(")", "(")
      .replaceAll("replaceChar", ")");
  String postFix = infixToPostfix(reversedInfix);
  return postFix.split('').reversed.join('');
}

String infixToPostfix(String infix){
  Queue<String> operatorStack = Queue();
  String postFix = "";
  for(int i = 0; i<infix.length; i++){
    String char = infix[i];
    //if character is an operand, add it to the result
    if(isOperand(infix[i])){
      postFix += infix[i];
    } else if(char == "("){
      operatorStack.addFirst(char);
    } else if(char == ")"){
      while(operatorStack.isNotEmpty && operatorStack.first != "("){
        postFix += operatorStack.removeFirst();
      }
      operatorStack.removeFirst(); //to remove "(";
    } else{
      /* check current operator precedence with the top most
       operator's precedence in the stack */
      if(operatorStack.isNotEmpty && precedence(char) <= precedence(operatorStack.first)){
        postFix += operatorStack.removeFirst();
        operatorStack.addFirst(char);
        continue;
      }
      operatorStack.addFirst(char);
    }
  }
  while(operatorStack.isNotEmpty){
    postFix += operatorStack.removeFirst();
  }
  return postFix;
}

bool isOperand(String char){
  RegExp digRegExp = RegExp(r'[0-9]');
  if(digRegExp.hasMatch(char)){
    return true;
  }
  return false;
}

int precedence(String char){
  if(char == "+" || char == "-") return 1;
  if(char == "*" || char == "/") return 2;
  return -1;
}

main() {
  String infix = stdin.readLineSync()!;
  print(infixToPrefix(infix));
}