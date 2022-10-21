
import 'package:dart_flutter_sandbox/modules/UserGreeter.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('User Greeter should greet user by entered name', (WidgetTester tester) async {

    var unitUnderTest = new UserGreeter();
    var testWrapper = new MaterialApp
    (
      home: unitUnderTest
    );

    await tester.pumpWidget(testWrapper);

    // find Text prompting user

    final inputFieldFinder = find.byKey(const Key('nameInputBox'));
    await tester.enterText(inputFieldFinder, "Test Name");

    await tester.tap(find.byKey(const Key('submitButton')));
    await tester.pump();

    expect(find.text('Hello, Test Name!'), findsOneWidget);
  });

}
