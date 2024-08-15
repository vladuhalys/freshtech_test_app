import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/getit.dart';
import 'core/router/app_router.dart';
import 'core/utils/app_bloc_logger.dart';
import 'presentation/app_cubit/app_cubit.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc.observer = getIt<AppBlocObserver>();
    final rout = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(create: (context) => getIt<AppCubit>()..init()),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Freshtech Test Application',
            routerConfig: rout.config(),
            builder: (context, router) {
              return BlocListener<AppCubit, AppState>(
                listener: (context, state) {
                  state.mapOrNull(
                    login: (value) => rout.replaceAll([const HomeRoute()]),
                    logout: (value) => rout.replaceAll([const LoginRoute()]),
                  );
                },
                child: router,
              );
            },
          );
        },
      ),
    );
  }
}
