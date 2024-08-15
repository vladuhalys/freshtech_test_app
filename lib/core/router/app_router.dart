import 'package:auto_route/auto_route.dart';

import '../../presentation/create_account/screens/create_accaunt_scresm.dart';
import '../../presentation/home/screens/home_screen.dart';
import '../../presentation/login/screens/login_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  
 @override
 List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: CreateAccountRoute.page),
 ];
}