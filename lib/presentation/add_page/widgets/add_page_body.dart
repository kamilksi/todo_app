import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app/presentation/add_page/cubit/add_page_cubit.dart';
import 'package:todo_app/presentation/add_page/cubit/add_page_state.dart';

class AddPageBody extends HookWidget {
  const AddPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPageCubit, AddPageState>(
        listener: _listener, builder: _buildBody);
  }
}

void _listener(BuildContext context, state) => state.mapOrNull(
    success: (state) => context.router.pop(),
    error: (state) => print(state.error.toString()));

Widget _buildBody(BuildContext context, AddPageState state) {
  return Text("");
}
