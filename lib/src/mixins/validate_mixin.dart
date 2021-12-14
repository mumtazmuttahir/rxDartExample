import 'package:rxdart/src/config/login_config.dart';

class ValidationMixin {
  String? validateEmail(String? value) {
    if (value == null) {
      return LoginConfiguration.EMAIL_TEXT_FIELD_NULL_VALIDATOR_TEXT;
    }
    if (!value.contains('@')) {
      return LoginConfiguration.EMAIL_TEXT_FIELD_VALIDATOR_TEXT;
    }
  }

  String? validatePassword(String? value) {
    if (value == null) {
      return LoginConfiguration.PASSWORD_TEXT_FIELD_NULL_VALIDATOR_TEXT;
    }
    if (value.length < 4) {
      return LoginConfiguration.PASSWORD_TEXT_FIELD_VALIDATOR_TEXT;
    }
  }
}
