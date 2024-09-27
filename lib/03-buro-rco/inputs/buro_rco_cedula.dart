import 'package:formz/formz.dart';

// Define input validation errors
enum BuroRcoCedulaInputError { empty, length }

// Extend FormzInput and provide the input type and error type.
class BuroRcoCedulaInput extends FormzInput<String, BuroRcoCedulaInputError> {
  // Call super.pure to represent an unmodified form input.
  const BuroRcoCedulaInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const BuroRcoCedulaInput.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == BuroRcoCedulaInputError.empty) return 'El campo es obligatorio';
    if (displayError == BuroRcoCedulaInputError.length) return 'Ingrese mínimo 10 caracteres';
    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  BuroRcoCedulaInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return BuroRcoCedulaInputError.empty;
    if (value.length < 10 || value.trim().length < 10) return BuroRcoCedulaInputError.length;
    return null;
  }
}
