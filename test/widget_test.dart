import 'package:flutter_test/flutter_test.dart';
import 'package:lugares_app/main.dart';

void main() {
  testWidgets('Splash muestra el nombre y pasa al Home', (tester) async {
    await tester.pumpWidget(const LugaresApp());
    expect(find.text('Rutas Bonitas'), findsOneWidget);

    await tester.pump(const Duration(seconds: 4));
    await tester.pumpAndSettle();
    expect(find.text('Buscar lugares...'), findsOneWidget);
  });
}
