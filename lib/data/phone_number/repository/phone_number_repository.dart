import '../../../core/utils/app_cached_util.dart';
import '../model/phone_number_model.dart';

class PhoneNumberRepository {
  final AppCachedUtil util;

  PhoneNumberRepository({required this.util});

  Future<PhoneNumberModel> getPhoneFormCache() async
  {
    String ? phoneNumber = await util.readString('phone_number');
    return PhoneNumberModel(number: phoneNumber ?? '');
  }

  Future<void> savePhoneNumber(PhoneNumberModel phoneNumberModel) async
  {
    print(phoneNumberModel.number);
    await util.writeString('phone_number',phoneNumberModel.number);
  }

  Future<void> clearPhoneNumber() async
  {
    await util.writeString('phone_number','');
  }
}