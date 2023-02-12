import 'package:auto_route/annotations.dart';
import 'package:todo_app/presentation/add_page/add_page.dart';

import '../../home_page/home_page.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: AddPage),
  ],
)
class $AppRouter {}
