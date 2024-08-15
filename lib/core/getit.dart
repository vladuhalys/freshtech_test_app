import 'package:encrypt_shared_preferences/provider.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../data/country_code/repository/country_code_repository.dart';
import '../data/phone_number/repository/phone_number_repository.dart';
import '../presentation/app_cubit/app_cubit.dart';
import '../presentation/login/cubit/login_cubit.dart';
import 'api/api_service.dart';
import 'api/country_code_api.dart';
import 'router/app_router.dart';
import 'utils/app_bloc_logger.dart';
import 'utils/app_cached_util.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  /// Routing
  final appRouter = AppRouter();
  getIt.registerLazySingleton(() => appRouter);

  /// Utils
  await EncryptedSharedPreferences.initialize('4NCSRfms9hVu6h7R');
  getIt.registerLazySingleton(() => AppCachedUtil(preferences: EncryptedSharedPreferences.getInstance()));
  getIt.registerLazySingleton<Logger>(Logger.new);
  getIt.registerLazySingleton<AppBlocObserver>(AppBlocObserver.new);

  /// API
  getIt.registerLazySingleton(() => ApiService());
  getIt.registerFactory(() => CountryCodeApi(apiService: getIt()));

  /// Repository
  getIt.registerFactory(() => CountryCodeRepository(api: getIt()));
  getIt.registerFactory(() => PhoneNumberRepository(util: getIt()));

  ///Cubits
  getIt.registerFactory(() => AppCubit(phoneNumberRepository: getIt()));
  getIt.registerFactory(() => LoginCubit(phoneNumberRepository: getIt(), countryCodeRepository: getIt()));
}