import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/response/failure.dart';

part 'add_page_state.freezed.dart';

@freezed
class AddPageState with _$AddPageState {
  const factory AddPageState.inital() = _Inital;
  const factory AddPageState.loading() = _Loading;
  const factory AddPageState.success() = _Success;
  const factory AddPageState.error(Failure error) = _ServerError;
}
