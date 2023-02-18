import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';
import 'package:todo_app/domain/repository/task_repository.dart';
import '../entity/response/failure.dart';
import '../entity/response/success.dart';

@injectable
class UpdateTaskUseCase {
  UpdateTaskUseCase(this._repo);
  final TaskRepository _repo;

  Future<Either<Failure, Success>> call(TaskEntity task, int index) =>
      _repo.updateTask(task, index);
}
