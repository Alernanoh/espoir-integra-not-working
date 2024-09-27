import 'package:formz/formz.dart';

// Define input validation errors
enum ActualizarClienteCedulaInputError { empty, length }

// Extend FormzInput and provide the input type and error type.
class ActualizarClienteCedulaInput extends FormzInput<String, ActualizarClienteCedulaInputError> {
  // Call super.pure to represent an unmodified form input.
  const ActualizarClienteCedulaInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const ActualizarClienteCedulaInput.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == ActualizarClienteCedulaInputError.empty) return 'El campo es obligatorio';
    if (displayError == ActualizarClienteCedulaInputError.length) return 'Ingrese mínimo 10 caracteres';
    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  ActualizarClienteCedulaInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return ActualizarClienteCedulaInputError.empty;
    if (value.length < 10 || value.trim().length < 10) return ActualizarClienteCedulaInputError.length;
    return null;
  }
}
