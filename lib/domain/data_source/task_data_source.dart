import '../../data/dto/request/task_dto.dart';

abstract class TaskDataSource {
  Future<void> addTask(TaskEntityDto task);
  Future<List<TaskEntityDto>> getTasks();
}
