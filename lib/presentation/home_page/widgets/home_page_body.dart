import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/presentation/common_widgets/app_custom_bar.dart';
import 'package:todo_app/presentation/home_page/cubit/home_page_cubit.dart';
import 'package:todo_app/presentation/home_page/cubit/home_page_state.dart';
import 'package:todo_app/presentation/home_page/widgets/task_tile.dart';
import 'package:todo_app/presentation/utils/router/app_router.dart';

const Text _title = Text("To Do");

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) => AppCustomBar(
        title: _title,
        backgroundColor: Colors.indigoAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final cubit = context.read<HomePageCubit>();
            await context.router.push(const AddRoute());
            cubit.init();
          },
        ),
        child: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (BuildContext context, HomePageState state) => state.map(
            loading: (state) => const Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
            success: (state) => ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (BuildContext context, int index) => TaskTile(
                  title: state.tasks[index].name,
                  description: state.tasks[index].description,
                  onTap: () async {
            final cubit = context.read<HomePageCubit>();
            cubit.deleteTask(index);
            },
              ),

            ),
            error: (state) => Text("Error"),
          ),
        ),
      );
}
