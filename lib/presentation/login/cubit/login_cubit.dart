import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/validation/confirm_password_validator.dart';
import '../../../core/validation/failure/form_failure.dart';
import '../../../core/validation/password_validator.dart';
import '../../../core/validation/phone_number_validator.dart';
import '../../../data/country_code/model/country_code_model.dart';
import '../../../data/country_code/repository/country_code_repository.dart';
import '../../../data/phone_number/model/phone_number_model.dart';
import '../../../data/phone_number/repository/phone_number_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
      {required PhoneNumberRepository phoneNumberRepository,
      required CountryCodeRepository countryCodeRepository})
      : _phoneNumberRepository = phoneNumberRepository,
        _countryCodeRepository = countryCodeRepository,
        super(const LoginState.loading());

  final PhoneNumberRepository _phoneNumberRepository;
  final CountryCodeRepository _countryCodeRepository;

  Future<void> init() async {
    try {
      final countries = await _countryCodeRepository.getCountryCodes();
      if(countries.isEmpty) {
        emit(LoginState.error(UnknownFailure()));
      } else {
        final phoneNumberModel = await _phoneNumberRepository.getPhoneFormCache();
        emit(LoginState.loaded(
          countries: countries,
          selectedCountry: countries.first,
          phoneNumber: phoneNumberModel,
          passwordValidator: PasswordValidator(''),
          confirmPasswordValidator: ConfirmPasswordValidator(('','')),
          phoneNumberValidator: PhoneNumberValidator(''),
          shouldShowError: false));
      }
    } on Exception {
      emit(LoginState.error(UnknownFailure()));
    }
  }

  void onFormChange()
  {
    emit(loadedState.copyWith(isCreateAccount: !loadedState.isCreateAccount));
  }

  void onCountrySelected(CountryCodeModel countryCode){
    emit(loadedState.copyWith(selectedCountry: countryCode));
  }
  LoadedState get loadedState =>  state.maybeMap(
      loaded: (loaded) =>
       loaded,
      
      orElse:()=> throw Exception('not loaded'),
    );

    Future<void> onChangePassword(String ?newPassword) async {
    state.mapOrNull(
      loaded: (loaded) {
        loaded.confirmPasswordValidator
            .update((newPassword?.trim()?? '' , loaded.confirmPassword));
        loaded.passwordValidator.update(newPassword?.trim() ?? '');
        emit(loaded.copyWith(password: newPassword?.trim() ?? ''));
      },
    );
  }

  Future<void> onChangeConfirmPassword(
      String ?newPassword, String ?newConfirmPassword) async {
    state.mapOrNull(
      loaded: (loaded) {
        loaded.confirmPasswordValidator
            .update((newPassword?.trim()?? '' , newConfirmPassword?.trim()?? ''));
        emit(loaded.copyWith(confirmPassword: newConfirmPassword?.trim() ?? ''));
      },
    );
  }

  Future<void> onChangePhoneNumber(String newPhoneNumber) async {
    state.mapOrNull(
      loaded: (loaded) {
        loaded.phoneNumberValidator.update(newPhoneNumber.trim());
        emit(loaded.copyWith(phoneNumber: PhoneNumberModel(number: newPhoneNumber.trim())));
      },
    );
  }
  Future<void> onLogin() async {
    state.mapOrNull(
      loaded: (loaded) async {
        if (_isFormValid(loaded)) {
          try {
            String phoneNumber = '+${loaded.selectedCountry.dial_code!.replaceAll('+', '')}${loaded.phoneNumber.number.replaceAll('-', '')}';
            PhoneNumberModel phoneNumberModel = PhoneNumberModel(number: phoneNumber);
            await _phoneNumberRepository.savePhoneNumber(phoneNumberModel);
            emit(loaded.copyWith(shouldShowError: false));
            emit(const LoginState.success());
          } on Exception {
            emit(loaded.copyWith(shouldShowError: true));
          }
        } else {
          emit(loaded.copyWith(shouldShowError: true));
        }
      },
    );
   
  }

  bool _isFormValid(LoadedState state) {
    if (state.isCreateAccount) {
      return state.passwordValidator.isValid &&
          state.confirmPasswordValidator.isValid &&
          state.phoneNumberValidator.isValid;
    } else {
      return state.passwordValidator.isValid && state.phoneNumberValidator.isValid;
    }
  }
}

