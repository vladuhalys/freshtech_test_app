import '../extensions.dart';

import 'failure/form_failure.dart';
import 'validator.dart';

class PhoneNumberValidator extends Validator<String, FormFailure> {
  PhoneNumberValidator(super.value);

  @override
  FormFailure? validate(String value) {
    if (value.trim().isNullOrEmptyTrim) {
      return PhoneNumberEmptyFailure();
    }
    return null;
  }
}
