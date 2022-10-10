
import 'package:flutter_test/flutter_test.dart';
import 'package:dart_flutter_sandbox/main.dart';

void main() {
  final testParameters = {
    1: 'I',
    2: 'II',
    3: 'III',
    4: 'IV',
    5: 'V',
    6: 'VI',
    7: 'VII',
    8: 'VIII',
    9: 'IX',
    10: 'X'
  };

  for (var parameterSet in testParameters.entries) {
    test('Convert ${parameterSet.key} to ${parameterSet.value} ', () {
      final result = convertToRomanNumeral(parameterSet.key);

      expect(result, equals(parameterSet.value));
    });
  }

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Generate Roman Numeral'), findsOneWidget);
  });
}

String convertToRomanNumeral(int input) {
  var result = '';

  for (var numeral in RomanNumerals.values.reversed) {
    while (input >= numeral.toArabic()) {
      result += numeral.name;
      input -= numeral.toArabic();
    }
  }

  return result;
}

enum RomanNumerals {
  I,
  IV,
  V,
  IX,
  X,
}

extension RomanNumeralExtension on RomanNumerals {
  int toArabic() {
    switch (this) {
      case RomanNumerals.I:
        return 1;
      case RomanNumerals.IV:
        return 4;
      case RomanNumerals.V:
        return 5;
      case RomanNumerals.IX:
        return 9;
      case RomanNumerals.X:
        return 10;
    }
  }
}
