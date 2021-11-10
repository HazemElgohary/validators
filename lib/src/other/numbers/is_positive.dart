import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `positive` number
class IsPositiveNumber extends TextValidationRule {
  IsPositiveNumber([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not odd number';

  @override
  bool isValid(String input) => isPositiveNumber(input);
}

bool isPositiveNumber(String input) {
  final asNumber = num.tryParse(input);
  if (asNumber != null) {
    return !asNumber.isNegative;
  }
  return false;
}
