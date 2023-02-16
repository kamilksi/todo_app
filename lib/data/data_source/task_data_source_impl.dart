import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/data/dto/request/task_dto.dart';

import '../../domain/data_source/task_data_source.dart';

@Injectable(as: TaskDataSource)
class TaskDataSourceImpl implements TaskDataSource {
  static const _taskDataBox = "task_data_box";

  static const name = 'name';
  static const description = 'description';

  Future<Box> registerTaskBox() async {
    var box = await Hive.openBox(_taskDataBox);
    return box;
  }

  @override
  Future<void> addTask(TaskEntityDto task) async {
    final box = await registerTaskBox();
    await box.put(task.name, {
      'name': task.name,
      'description': task.description,
    });
  }

  @override
  Future<List<TaskEntityDto>> getTasks() async {
    final box = await registerTaskBox();
    final data = box.values.toList();
    final List<TaskEntityDto> results = [];
    for (var element in data) {
      final task = TaskEntityDto.fromJson({
        'name': element['name'],
        'description': element['description'],
      });
      results.add(task);
    }
    return results;
  }

  @override
  Future<void> deleteTask({required int index}) async {
    final box = await registerTaskBox();
    box.deleteAt(index);
  }
}
