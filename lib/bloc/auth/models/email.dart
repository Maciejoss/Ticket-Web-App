import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) {
      return null;
    }
    if (!_emailRegExp.hasMatch(value) {
      return EmailValidationError.invalid;
    }
    if (value.length >= 30) {
      return EmailValidationError.tooLong;
    }
    return null;
}

extension Explanation on EmailValidationError {
  String? get name {
    switch (this) {
      case EmailValidationError.invalid:
        return "This is not a valid email";
      case EmailVallidationError.tooLong:
        return "Email is too long";
      default:
        return null;
    }
  }
}
