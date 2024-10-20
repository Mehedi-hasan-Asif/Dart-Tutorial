void main(){
  //function Calling
  welcomeMessage(name:'Mehedi',address: 'Mirpur-14',age: 24);
  welcomeMessage(name:'Asif');
  welcomeMessage(name:'Rahat');
  double r=add(10, 22.0);
  print(r);


}
//parameters
//[]-optional Parameter
//welcomeMessage(String name, [String address='', int age=0]){}
//named optional parameters
//required means obossoi dite hbe;
welcomeMessage({required String name,String address='',int age=0}){
  //body
  print('Hi,Good Morning,$name');
  print('How are You?,$age');
  print('Address,$address');
}
//return-type
double add (int a,double b){
  double result=a+b;
  return result;
}