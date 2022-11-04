
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Registration feature should', () {
    testWidgets('register new user', (WidgetTester tester) async {
      // A: Display login screen
      var unitUnderTest = const LoginScreen();
      var testWrapper = MaterialApp
        (
          home: unitUnderTest
      );
      await tester.pumpWidget(testWrapper);

      // A: Click register button
      await tester.tap(find.byKey(const Key('registerButton')));
      await tester.pump();

      // E: Be on registration page
      expect(find.byType(RegistrationScreen), findsOneWidget);

      // A: Enter username and password
      String username = 'NameOfUser';
      String password = 'Tester123';

      await tester.enterText(find.byKey(const Key('usernameInput')), username);
      await tester.pump(); // Might not need this - try commenting some of these out when tests pass
      await tester.enterText(find.byKey(const Key('passwordInput')), password);
      await tester.pump();


      // A: Click Register button
      await tester.tap(find.byKey(const Key('submitRegistrationButton')));
      await tester.pump();

      // E: Navigate to Logged-In page
      expect(find.byType(HomeScreen), findsOneWidget);

      // E: "Hello, {Username}" displayed on screen
      String expectedText = 'Hello, $username';
      expect(find.text(expectedText), findsOneWidget);
    });
  });
}

class RegistrationScreen {
}

class HomeScreen {
}

class LoginScreen extends Widget{
  const LoginScreen({super.key});

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}