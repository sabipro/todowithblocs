import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class TaskModel  extends Equatable{
  final int numticket;
  final String title;
  final String desc;

  const TaskModel (
      {required this.numticket, required this.title, required this.desc});

  // creation du foramat json
  tojsonencodable() {
    Map<String, dynamic> m = Map();
    m["numticket"] = numticket;
    m["title"] = title;
    m["desc"] = desc;
    return m;
  }

  List<Object?> get props=>[numticket,title,desc];
}

class TodoList {
  List<TaskModel> items = [];
  toJsonEncodable() {
    return items.map((item) {
      return item.tojsonencodable();
    }).toList();
  }
}
