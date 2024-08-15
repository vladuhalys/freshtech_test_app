part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = LoadingState;
  const factory LoginState.loaded({
    @Default(false) bool isCreateAccount,
    required PhoneNumberModel phoneNumber,
    required List<CountryCodeModel> countries,
    required CountryCodeModel selectedCountry,
    @Default('') String password,
    @Default('') String confirmPassword,
    required PasswordValidator passwordValidator,
    required ConfirmPasswordValidator confirmPasswordValidator,
    required PhoneNumberValidator phoneNumberValidator,
    @Default(false) bool shouldShowError,
  }) = LoadedState;
  const factory LoginState.error(FormFailure error) = ErrorState;
  const factory LoginState.success() = SuccessState;
}
