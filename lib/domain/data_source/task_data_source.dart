abstract class TaskDataSource {
  Future<void> addTask(TaskDto task);
  Future<List<TaskDto>> getTasks();
}
