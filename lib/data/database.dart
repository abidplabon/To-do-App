import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List toDoList=[];
  //reference the box
  final _myBox = Hive.box('mybox');

  // when the app is first used meaning empty show some demo
  void createInitialData(){
    toDoList=[["Hello to all",false],
    ["Patuakhali Science & Technology University",true]];
  }
  void loadData(){
    toDoList=_myBox.get("TODOLIST");
  }
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}