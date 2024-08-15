import '../extensions.dart';

import 'failure/form_failure.dart';
import 'validator.dart';

class ConfirmPasswordValidator
    extends Validator<(String, String), FormFailure> {
  ConfirmPasswordValidator(super.value);

  @override
  FormFailure? validate((String, String) value) {
    if (value.$2.isNullOrEmptyTrim) {
      return ConfirmPasswordEmptyFailure();
    }
    if (value.$1.trim() != value.$2.trim()) {
      return PasswordsDoNotMatch();
    }
    return null;
  }
}
