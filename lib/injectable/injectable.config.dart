// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data_source/task_data_source_impl.dart' as _i4;
import '../data/repository/task_repository_impl.dart' as _i6;
import '../domain/data_source/task_data_source.dart' as _i3;
import '../domain/repository/task_repository.dart' as _i5;
import '../domain/use_case/add_task_use_case.dart' as _i8;
import '../domain/use_case/delete_task_use_case.dart' as _i9;
import '../domain/use_case/get_task_use_case.dart' as _i10;
import '../domain/use_case/update_task_use_case.dart' as _i7;
import '../presentation/add_page/cubit/add_page_cubit.dart' as _i13;
import '../presentation/home_page/cubit/home_page_cubit.dart' as _i11;
import '../presentation/update_page/cubit/update_page_cubit.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.TaskDataSource>(() => _i4.TaskDataSourceImpl());
  gh.factory<_i5.TaskRepository>(
      () => _i6.TaskRepositoryImpl(get<_i3.TaskDataSource>()));
  gh.factory<_i7.UpdateTaskUseCase>(
      () => _i7.UpdateTaskUseCase(get<_i5.TaskRepository>()));
  gh.factory<_i8.AddTaskUseCase>(
      () => _i8.AddTaskUseCase(get<_i5.TaskRepository>()));
  gh.factory<_i9.DeleteTaskUseCase>(
      () => _i9.DeleteTaskUseCase(get<_i5.TaskRepository>()));
  gh.factory<_i10.GetTaskUseCase>(
      () => _i10.GetTaskUseCase(get<_i5.TaskRepository>()));
  gh.factory<_i11.HomePageCubit>(() => _i11.HomePageCubit(
        get<_i10.GetTaskUseCase>(),
        get<_i9.DeleteTaskUseCase>(),
      ));
  gh.factory<_i12.UpdatePageCubit>(
      () => _i12.UpdatePageCubit(get<_i7.UpdateTaskUseCase>()));
  gh.factory<_i13.AddPageCubit>(
      () => _i13.AddPageCubit(get<_i8.AddTaskUseCase>()));
  return get;
}
