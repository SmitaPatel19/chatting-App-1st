import 'dart:io';

void main(){

  // PRINT
  print('Welcome to Dart!');


  // VAR DATA TYPE
  var section; // dynamic section (can store many types of variable if value is not given initially)
  section="Name"; // String
  section=false;  // Boolean
  section= 7;  // Integer

  // var name="Smita"; // String
  // var name=7; // it is not correct as name is initialised by string so only string can be stored.



  // CLASS AND OBJECT
  var obj=myClass();  //creating object for class
  obj.printName("Smita");
  obj.printName("Patel");


  // LIST
  var mylist=[10,20,30,40];
  print("$mylist");

  var list=[];
  list.add("Smita"); //add element of any type
  list.add("Patel");
  list.addAll(mylist);  //add all elemets of mylist to list

  list.insert(2,100); //insert at idx 2
  list.insertAll(0, mylist); //insert full mylist at 0 indx
  print("$list");

  list[4]="Smita19"; //update list element
  print("$list");

  list.replaceRange(1, 3, [200,300]); //  update values from 1 to 3 idx (3 not included)
  print("$list");
  
  list.removeLast();
  print("$list");
  
  list.remove(10);
  print("$list");

  list.removeAt(2);
  print("$list");

  list.removeRange(0, 2);//removes from 0 to 2 idx(2 not included)
  print("$list");

  print("Length : ${list.length}");
  print("Reversed : ${list.reversed}"); //original list is not reversed permanently
  print("First Element : ${list.first}");
  print("Last Element : ${list.last}");
  print("Empty : ${list.isEmpty}");
  print("Element at : ${list.elementAt(3)}");


  // MAP
  var
  map_name={
    'key1':'Smita', // String can be in single or double inverted commas
    'Age of Experience': 4,  // keys can store any type of data
    'key3': 5.9,
    'key4': true,
  };

  // var mapname=Map(); // another mathod
  // mapname['Name']="smita";
  // mapname['Age of Experience']=7;
  // print(mapname);

  print(map_name);
  print(map_name['key1']);
  print(map_name['key5']);  // if key not exist then it return null

  map_name['key1']='Patel';
  print(map_name);
  map_name['Name']="Smita";
  print(map_name.isEmpty);
  print(map_name.length);
  print(map_name.keys);
  print(map_name.values);
  print(map_name.containsKey('Name'));
  print(map_name.containsValue(true));
}

class myClass{  //creating class

  void printName(String name){
    print(name);
  }
}