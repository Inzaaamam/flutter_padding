import 'package:flutter/widgets.dart';
import 'package:flutter_padding/flutter_padding.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('pad() applies correct padding', (tester) async {
    final widget = const Text('Hello').padAll(16);

    await tester.pumpWidget(
      Directionality(textDirection: TextDirection.ltr, child: widget),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));

    expect(paddingWidget.padding, const EdgeInsets.all(16));
  });

  testWidgets('padX() applies horizontal padding', (tester) async {
    final widget = const Text('Hello').padH(12);

    await tester.pumpWidget(
      Directionality(textDirection: TextDirection.ltr, child: widget),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));

    expect(paddingWidget.padding, const EdgeInsets.symmetric(horizontal: 12));
  });
}
