import 'dart:io';

void main() {

  int n = int.parse(stdin.readLineSync()!.trim());
  var line = stdin.readLineSync()!.trim();
  var data = line.split(" ");
  List<int> numbers = [];
  Map<int,int>map={};
  for(int i =0;i<data.length; i++){
    var item = int.parse(data[i]);
    if(map[item]!=null){
      map[item] = map[item]! + 1;

    }else{
      map[item] = 1;
      numbers.add(item);
    }
  }
  numbers.sort((a, b) => map[a]!.compareTo(map[b]!));
  print(map.length);
  for(int i =0; i<numbers.length; i++){
    stdout.write("${numbers[i]} ${map[numbers[i]]}\n");
  }


}
