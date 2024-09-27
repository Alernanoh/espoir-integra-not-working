import 'package:formz/formz.dart';

// Define input validation errors
enum ConsultaCarteraCedulaInputError { empty, length }

// Extend FormzInput and provide the input type and error type.
class ConsultaCarteraCedulaInput extends FormzInput<String, ConsultaCarteraCedulaInputError> {
  // Call super.pure to represent an unmodified form input.
  const ConsultaCarteraCedulaInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const ConsultaCarteraCedulaInput.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == ConsultaCarteraCedulaInputError.empty) return 'El campo es obligatorio';
    if (displayError == ConsultaCarteraCedulaInputError.length) return 'Ingrese mínimo 10 caracteres';
    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  ConsultaCarteraCedulaInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return ConsultaCarteraCedulaInputError.empty;
    if (value.length < 10 || value.trim().length < 10) return ConsultaCarteraCedulaInputError.length;
    return null;
  }
}
