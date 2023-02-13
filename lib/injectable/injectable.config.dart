// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/repository/task_repository_impl.dart' as _i4;
import '../domain/data_source/task_data_source.dart' as _i5;
import '../domain/repository/task_repository.dart' as _i3;
import '../domain/use_case/add_task_use_case.dart' as _i6;
import '../domain/use_case/get_task_use_case.dart' as _i7;
import '../presentation/add_page/cubit/add_page_cubit.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.TaskRepository>(
      () => _i4.TaskRepositoryImpl(get<_i5.TaskDataSource>()));
  gh.factory<_i6.AddTaskUseCase>(
      () => _i6.AddTaskUseCase(get<_i3.TaskRepository>()));
  gh.factory<_i7.GetTaskUseCase>(
      () => _i7.GetTaskUseCase(get<_i3.TaskRepository>()));
  gh.factory<_i8.AddPageCubit>(
      () => _i8.AddPageCubit(get<_i6.AddTaskUseCase>()));
  return get;
}
