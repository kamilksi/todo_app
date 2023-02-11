import '../../data/dto/request/task_dto.dart';

abstract class TaskDataSource {
  Future<void> addTask(TaskDto task);
  Future<List<TaskDto>> getTasks();
}
