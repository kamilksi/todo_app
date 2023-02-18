import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/entity/response/failure.dart';

part 'update_page_state.freezed.dart';

@freezed
class UpdatePageState with _$UpdatePageState {
  const factory UpdatePageState.init() = _Initial;
  const factory UpdatePageState.success() = _Success;
  const factory UpdatePageState.error(Failure error) = _Error;
}
