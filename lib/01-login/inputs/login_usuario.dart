import 'package:formz/formz.dart';

// Define input validation errors
enum LoginUsuarioInputError { empty }

// Extend FormzInput and provide the input type and error type.
class UsuarioInput extends FormzInput<String, LoginUsuarioInputError> {
  // Call super.pure to represent an unmodified form input.
  const UsuarioInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const UsuarioInput.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == LoginUsuarioInputError.empty) return 'El campo es obligatorio';
    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  LoginUsuarioInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return LoginUsuarioInputError.empty;
    return null;
  }
}
