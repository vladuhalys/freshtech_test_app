import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../getit.dart';

class AppBlocObserver extends BlocObserver {
  static final logger = getIt<Logger>();
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    logger.t('''${bloc.runtimeType}
    Current: ${change.nextState.toString()}
    ''');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.f('${bloc.runtimeType} has been closed');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.f('''${bloc.runtimeType} has been created
    Current: ${bloc.state.toString()} ''');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('${bloc.runtimeType}\n$stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    logger.i('A ${event.toString()} has been added to ${bloc.runtimeType}');
  }
}