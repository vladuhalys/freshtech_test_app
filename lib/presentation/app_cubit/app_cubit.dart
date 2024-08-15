
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/phone_number/model/phone_number_model.dart';
import '../../data/phone_number/repository/phone_number_repository.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  final PhoneNumberRepository _phoneNumberRepository;
  AppCubit({required PhoneNumberRepository phoneNumberRepository}) : _phoneNumberRepository = phoneNumberRepository, super(const AppState.logout());

  void init() async {
    final phoneNumberModel = await _phoneNumberRepository.getPhoneFormCache();
    if (phoneNumberModel.number.isNotEmpty) {
      emit(AppState.login(phoneNumber: phoneNumberModel));
    } else {
      emit(const AppState.logout());
    }
  }

  void login(PhoneNumberModel phoneNumberModel) async {
    emit(AppState.login(phoneNumber: phoneNumberModel));
  }

  void logout() async {
    await _phoneNumberRepository.clearPhoneNumber();
    emit(const AppState.logout());
  }
 
}
