import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:asyncronica/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construye tu aplicación y activa un marco.
    await tester.pumpWidget(const MyApp());
    // Verificamos que nuestro contador comience en 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    // Toca el ícono '+' y activa un marco.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    // Verificamos que nuestro contador se haya incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
