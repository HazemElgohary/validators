import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `even` number
class IsEven extends TextValidationRule {
  IsEven([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not even number';

  @override
  bool isValid(String input) => isEven(input);
}

bool isEven(String input) {
  final asNumber = num.tryParse(input);
  if (asNumber != null) {
    return asNumber.toInt().isEven;
  }
  return false;
}
