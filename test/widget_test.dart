import 'package:flutter_test/flutter_test.dart';

import 'package:taskflow/main.dart';

void main() {
  testWidgets('La bienvenida muestra app, curso, estudiante y contador', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TaskFlowApp());

    expect(find.text('TaskFlow'), findsWidgets);
    expect(find.text('Quinto "B"'), findsOneWidget);
    expect(find.textContaining('Raul'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('tareas pendientes'), findsOneWidget);
  });
}
