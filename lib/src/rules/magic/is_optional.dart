import 'package:queen_validators/src/text_rule_class.dart';

/// allows you to skip the errors if the input is null
/// * if the input is null and fails any role
/// * with instance of this class the qValidator will ignore the field rule
class IsOptional extends TextValidationRule {
  IsOptional() : super('');

  @override
  bool isValid(input) => true;
}
