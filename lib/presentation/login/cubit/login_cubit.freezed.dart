// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)
        loaded,
    required TResult Function(FormFailure error) error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult? Function(FormFailure error)? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult Function(FormFailure error)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)
        loaded,
    required TResult Function(FormFailure error) error,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult? Function(FormFailure error)? error,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult Function(FormFailure error)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements LoginState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isCreateAccount,
      PhoneNumberModel phoneNumber,
      List<CountryCodeModel> countries,
      CountryCodeModel selectedCountry,
      String password,
      String confirmPassword,
      PasswordValidator passwordValidator,
      ConfirmPasswordValidator confirmPasswordValidator,
      PhoneNumberValidator phoneNumberValidator,
      bool shouldShowError});

  $PhoneNumberModelCopyWith<$Res> get phoneNumber;
  $CountryCodeModelCopyWith<$Res> get selectedCountry;
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCreateAccount = null,
    Object? phoneNumber = null,
    Object? countries = null,
    Object? selectedCountry = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? passwordValidator = null,
    Object? confirmPasswordValidator = null,
    Object? phoneNumberValidator = null,
    Object? shouldShowError = null,
  }) {
    return _then(_$LoadedStateImpl(
      isCreateAccount: null == isCreateAccount
          ? _value.isCreateAccount
          : isCreateAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryCodeModel>,
      selectedCountry: null == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as CountryCodeModel,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      passwordValidator: null == passwordValidator
          ? _value.passwordValidator
          : passwordValidator // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      confirmPasswordValidator: null == confirmPasswordValidator
          ? _value.confirmPasswordValidator
          : confirmPasswordValidator // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordValidator,
      phoneNumberValidator: null == phoneNumberValidator
          ? _value.phoneNumberValidator
          : phoneNumberValidator // ignore: cast_nullable_to_non_nullable
              as PhoneNumberValidator,
      shouldShowError: null == shouldShowError
          ? _value.shouldShowError
          : shouldShowError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<$Res> get phoneNumber {
    return $PhoneNumberModelCopyWith<$Res>(_value.phoneNumber, (value) {
      return _then(_value.copyWith(phoneNumber: value));
    });
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryCodeModelCopyWith<$Res> get selectedCountry {
    return $CountryCodeModelCopyWith<$Res>(_value.selectedCountry, (value) {
      return _then(_value.copyWith(selectedCountry: value));
    });
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl(
      {this.isCreateAccount = false,
      required this.phoneNumber,
      required final List<CountryCodeModel> countries,
      required this.selectedCountry,
      this.password = '',
      this.confirmPassword = '',
      required this.passwordValidator,
      required this.confirmPasswordValidator,
      required this.phoneNumberValidator,
      this.shouldShowError = false})
      : _countries = countries;

  @override
  @JsonKey()
  final bool isCreateAccount;
  @override
  final PhoneNumberModel phoneNumber;
  final List<CountryCodeModel> _countries;
  @override
  List<CountryCodeModel> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  final CountryCodeModel selectedCountry;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  final PasswordValidator passwordValidator;
  @override
  final ConfirmPasswordValidator confirmPasswordValidator;
  @override
  final PhoneNumberValidator phoneNumberValidator;
  @override
  @JsonKey()
  final bool shouldShowError;

  @override
  String toString() {
    return 'LoginState.loaded(isCreateAccount: $isCreateAccount, phoneNumber: $phoneNumber, countries: $countries, selectedCountry: $selectedCountry, password: $password, confirmPassword: $confirmPassword, passwordValidator: $passwordValidator, confirmPasswordValidator: $confirmPasswordValidator, phoneNumberValidator: $phoneNumberValidator, shouldShowError: $shouldShowError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            (identical(other.isCreateAccount, isCreateAccount) ||
                other.isCreateAccount == isCreateAccount) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.passwordValidator, passwordValidator) ||
                other.passwordValidator == passwordValidator) &&
            (identical(
                    other.confirmPasswordValidator, confirmPasswordValidator) ||
                other.confirmPasswordValidator == confirmPasswordValidator) &&
            (identical(other.phoneNumberValidator, phoneNumberValidator) ||
                other.phoneNumberValidator == phoneNumberValidator) &&
            (identical(other.shouldShowError, shouldShowError) ||
                other.shouldShowError == shouldShowError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCreateAccount,
      phoneNumber,
      const DeepCollectionEquality().hash(_countries),
      selectedCountry,
      password,
      confirmPassword,
      passwordValidator,
      confirmPasswordValidator,
      phoneNumberValidator,
      shouldShowError);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)
        loaded,
    required TResult Function(FormFailure error) error,
    required TResult Function() success,
  }) {
    return loaded(
        isCreateAccount,
        phoneNumber,
        countries,
        selectedCountry,
        password,
        confirmPassword,
        passwordValidator,
        confirmPasswordValidator,
        phoneNumberValidator,
        shouldShowError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult? Function(FormFailure error)? error,
    TResult? Function()? success,
  }) {
    return loaded?.call(
        isCreateAccount,
        phoneNumber,
        countries,
        selectedCountry,
        password,
        confirmPassword,
        passwordValidator,
        confirmPasswordValidator,
        phoneNumberValidator,
        shouldShowError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult Function(FormFailure error)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          isCreateAccount,
          phoneNumber,
          countries,
          selectedCountry,
          password,
          confirmPassword,
          passwordValidator,
          confirmPasswordValidator,
          phoneNumberValidator,
          shouldShowError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements LoginState {
  const factory LoadedState(
      {final bool isCreateAccount,
      required final PhoneNumberModel phoneNumber,
      required final List<CountryCodeModel> countries,
      required final CountryCodeModel selectedCountry,
      final String password,
      final String confirmPassword,
      required final PasswordValidator passwordValidator,
      required final ConfirmPasswordValidator confirmPasswordValidator,
      required final PhoneNumberValidator phoneNumberValidator,
      final bool shouldShowError}) = _$LoadedStateImpl;

  bool get isCreateAccount;
  PhoneNumberModel get phoneNumber;
  List<CountryCodeModel> get countries;
  CountryCodeModel get selectedCountry;
  String get password;
  String get confirmPassword;
  PasswordValidator get passwordValidator;
  ConfirmPasswordValidator get confirmPasswordValidator;
  PhoneNumberValidator get phoneNumberValidator;
  bool get shouldShowError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormFailure error});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FormFailure,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.error);

  @override
  final FormFailure error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)
        loaded,
    required TResult Function(FormFailure error) error,
    required TResult Function() success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult? Function(FormFailure error)? error,
    TResult? Function()? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult Function(FormFailure error)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements LoginState {
  const factory ErrorState(final FormFailure error) = _$ErrorStateImpl;

  FormFailure get error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)
        loaded,
    required TResult Function(FormFailure error) error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult? Function(FormFailure error)? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool isCreateAccount,
            PhoneNumberModel phoneNumber,
            List<CountryCodeModel> countries,
            CountryCodeModel selectedCountry,
            String password,
            String confirmPassword,
            PasswordValidator passwordValidator,
            ConfirmPasswordValidator confirmPasswordValidator,
            PhoneNumberValidator phoneNumberValidator,
            bool shouldShowError)?
        loaded,
    TResult Function(FormFailure error)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements LoginState {
  const factory SuccessState() = _$SuccessStateImpl;
}
