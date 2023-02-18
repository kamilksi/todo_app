import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';
import 'package:todo_app/domain/use_case/update_task_use_case.dart';
import 'package:todo_app/presentation/update_page/cubit/update_page_state.dart';

@injectable
class UpdatePageCubit extends Cubit<UpdatePageState> {
  UpdatePageCubit(this._updateTaskUseCase)
      : super(const UpdatePageState.init());

  final UpdateTaskUseCase _updateTaskUseCase;

  Future<void> updateTask(TaskEntity task, int index) async {
    final result = await _updateTaskUseCase(task, index);
    result.fold((l) => emit(UpdatePageState.error(l)),
        (r) => emit(UpdatePageState.success()));
  }
}
