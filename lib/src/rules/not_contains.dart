import 'package:queen_validators/src/imp/validation.dart';

/// checks if input does not contain the provided value;

class NotContains extends QueenValidationRule {
  final String value;

  const NotContains(this.value, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'must not contain $value';

  @override
  bool validate(dynamic val) => !(val as String).trim().contains(value);
}
