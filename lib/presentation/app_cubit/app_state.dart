part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.logout() = _Logout;
  const factory AppState.login({required PhoneNumberModel phoneNumber}) = _Loaded;
}
