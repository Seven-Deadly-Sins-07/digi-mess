import 'package:form_field_validator/form_field_validator.dart';

MultiValidator myValidator({required String requiredField}) {
  return MultiValidator(
      [RequiredValidator(errorText: '$requiredField is required')]);
}