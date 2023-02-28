import 'dart:convert';

import 'package:localstorage/localstorage.dart';

import 'base_task_ripository.dart';
import 'package:todowithbloc/models/task_model.dart';

class TaskRipository extends BaseTaskRipository {
  final LocalStorage storage = LocalStorage("todos");
  TaskModel modelTask = TaskModel(
      numticket: 1,
      title: "Coupe du monde",
      desc: "La coupe commence en afrique d'ici la");

  @override
  additems() {
    final info = json.encode(modelTask.tojsonencodable());
    storage.setItem('model', info);
  }

  @override
  getitems() {
    Map<String, dynamic> info = json.decode('model');
    final info_ticket = info['numticket'];
    final info_title = info['title'];
    final info_desc = info['desc'];

    return info;
  }
}
