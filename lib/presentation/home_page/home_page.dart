import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/injectable/injectable.dart';
import 'package:todo_app/presentation/home_page/cubit/home_page_cubit.dart';

import 'widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomePageCubit>()..init(),
      child: const HomePageBody(),
    );
  }
}
