import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/request/task/task.dart';

part 'task_dto.freezed.dart';

@freezed
class TaskEntityDto with _$TaskEntityDto {
  const factory TaskEntityDto({
    required String name,
    required String description,
  }) = _TaskEntityDto;
}

extension TaskEntityDtoExtension on TaskEntityDto {
  TaskEntity get toEntity => TaskEntity(name: name, description: description);
}
