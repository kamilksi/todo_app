import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';
import 'package:todo_app/domain/use_case/add_task_use_case.dart';
import 'add_page_state.dart';

@injectable
class AddPageCubit extends Cubit<AddPageState> {
  AddPageCubit(this._addTaskUseCase) : super(const AddPageState.inital());

  final AddTaskUseCase _addTaskUseCase;

  Future<void> addTask(TaskEntity task) async {
    final result = await _addTaskUseCase(task);
    result.fold((l) => emit(AddPageState.error(l)),
        (r) => emit(const AddPageState.success()));
  }
}
