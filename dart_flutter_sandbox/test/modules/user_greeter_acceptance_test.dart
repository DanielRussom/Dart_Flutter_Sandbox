
import 'package:dart_flutter_sandbox/modules/UserGreeter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('User Greeter should greet user by entered name', (WidgetTester tester) async {
    await tester.pumpWidget(const UserGreeter());

    final inputFieldFinder = find.byKey(const Key('nameInputBox'));
    await tester.enterText(inputFieldFinder, "Test Name");

    await tester.tap(find.byKey(const Key('submitButton')));
    await tester.pump();

    expect(find.text('Hello, Test Name!'), findsOneWidget);
  });

}
