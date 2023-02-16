import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/use_case/get_task_use_case.dart';

import 'home_page_state.dart';

@injectable
class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._getTaskUseCase) : super(const HomePageState.loading());

  final GetTaskUseCase _getTaskUseCase;

  Future<void> init() async {
    emit(const HomePageState.loading());
    final result = await _getTaskUseCase();

    Future.delayed(const Duration(seconds: 1), () async {
      result.fold((l) => emit(HomePageState.error(l)),
          (r) => emit(HomePageState.success(tasks: r)));
    });
  }
}
