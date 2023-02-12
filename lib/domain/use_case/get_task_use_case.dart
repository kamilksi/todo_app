import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';
import 'package:todo_app/domain/repository/task_repository.dart';
import '../entity/response/failure.dart';
import '../entity/response/success.dart';

@injectable
class GetTaskUseCase {
  GetTaskUseCase(this._repo);
  final TaskRepository _repo;

  Future<Either<Failure, List<TaskEntity>>> call() => _repo.getTasks();
}
