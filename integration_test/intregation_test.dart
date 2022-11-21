import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_github_webhook/main.dart' as app;
import 'package:integration_test/integration_test.dart';


void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("full app test", (tester) async {
      app.main();
      await tester.pumpAndSettle();

      var fab = find.byType(FloatingActionButton).first;

      for( var i = 0 ; i <= 10; i++ ) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.tap(fab);
        await tester.pumpAndSettle();
      }

      // expect(
      //   tester.getSemantics(fab),
      //   matchesSemantics(
      //       tooltip: 'Increment',),
      // );

    });
  });
}