import 'package:formz/formz.dart';

// Define input validation errors
enum ConsultaCarteraGrupoInputError { empty }

// Extend FormzInput and provide the input type and error type.
class ConsultaCarteraGrupoInput extends FormzInput<String, ConsultaCarteraGrupoInputError> {
  // Call super.pure to represent an unmodified form input.
  const ConsultaCarteraGrupoInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const ConsultaCarteraGrupoInput.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == ConsultaCarteraGrupoInputError.empty) return 'El campo es obligatorio';
    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  ConsultaCarteraGrupoInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return ConsultaCarteraGrupoInputError.empty;
    return null;
  }
}
