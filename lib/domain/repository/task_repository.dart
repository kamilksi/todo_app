import 'package:dartz/dartz.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';

import '../entity/response/success.dart';
import '../entity/response/failure.dart';

abstract class TaskRepository {
  Future<Either<Failure, Success>> addTask(TaskEntity task);
  Future<Either<Failure, List<TaskEntity>>> getTasks();
}
