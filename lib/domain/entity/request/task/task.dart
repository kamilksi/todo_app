import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/data/dto/request/task_dto.dart';

part 'task.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required String name,
    required String description,
  }) = _TaskEntity;
}

extension TaskEntityExtension on TaskEntity {
  TaskEntityDto get toDto =>
      TaskEntityDto(name: name, description: description);
}
