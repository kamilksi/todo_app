import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/data/dto/request/task_dto.dart';
import 'package:todo_app/domain/data_source/task_data_source.dart';
import 'package:todo_app/domain/entity/response/success.dart';

import '../../domain/entity/request/task/task.dart';
import '../../domain/entity/response/failure.dart';
import '../../domain/repository/task_repository.dart';

@Injectable(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this.taskDataSource);

  final TaskDataSource taskDataSource;

  @override
  Future<Either<Failure, Success>> addTask(TaskEntity task) async {
    try {
      await taskDataSource.addTask(task.toDto);
      return const Right(Success());
    } catch (err) {
      return const Left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<TaskEntity>>> getTasks() async {
    try {
      final List<TaskEntityDto> tasks = await taskDataSource.getTasks();
      final result = tasks.map((e) => e.toEntity).toList();
      return Right(result);
    } catch (err) {
      return const Left(Failure());
    }
  }
}
