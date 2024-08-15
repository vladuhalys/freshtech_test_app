import '../extensions.dart';

import 'failure/form_failure.dart';
import 'validator.dart';

class PasswordValidator extends Validator<String, FormFailure> {
  PasswordValidator(super.value);

  @override
  FormFailure? validate(String value) {
    if (value.trim().isNullOrEmptyTrim) {
      return PasswordEmptyFailure();
    }

    if (value.trim().length < 8) {
      return PasswordTooShortFailure();
    }
    return null;
  }
}
