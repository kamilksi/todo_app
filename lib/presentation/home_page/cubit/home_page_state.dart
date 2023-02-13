import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/entity/response/failure.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.success({required List<TaskEntity> tasks}) =
      _Success;
  const factory HomePageState.error(Failure error) = _Error;
}
