import 'package:formz/formz.dart';

// Define input validation errors
enum LoginClaveInputError { empty }

// Extend FormzInput and provide the input type and error type.
class ClaveInput extends FormzInput<String, LoginClaveInputError> {
  // Call super.pure to represent an unmodified form input.
  const ClaveInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const ClaveInput.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == LoginClaveInputError.empty) return 'El campo es obligatorio';
    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  LoginClaveInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return LoginClaveInputError.empty;
    return null;
  }
}
