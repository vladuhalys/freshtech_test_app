

abstract class FormFailure{
  const FormFailure();

  String getFailure();
}

final class PasswordEmptyFailure extends FormFailure {
  @override
  String getFailure() {
    return "Password is required";
  }
}

final class PasswordTooShortFailure extends FormFailure {
  @override
  String getFailure() {
    return "Password must be at least 8 characters";
  }
}

final class ConfirmPasswordEmptyFailure extends FormFailure {
  @override
  String getFailure() {
    return "Confirm password is required";
  }
}

final class PasswordsDoNotMatch extends FormFailure {
  @override
  String getFailure() {
    return "Passwords do not match";
  }
}

final class PhoneNumberEmptyFailure extends FormFailure {
  @override
  String getFailure() {
    return "Phone number is required";
  }
}

final class UnknownFailure extends FormFailure {
  @override
  String getFailure() {
    return "Something went wrong";
  }
}
