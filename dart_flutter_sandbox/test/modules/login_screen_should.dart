import 'package:dart_flutter_sandbox/modules/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Login screen should", () {
    testWidgets('display title', (WidgetTester tester) async {
      var underTest = const LoginScreen();
      var testWrapper = MaterialApp
        (
          home: underTest
      );

      await tester.pumpWidget(testWrapper);

      expect(find.text('User Greeter'), findsOneWidget);
    });
  });

}