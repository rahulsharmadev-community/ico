import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ico/ico.dart';

void main() {
  testWidgets('text', (tester) async {
    await tester.pumpWidget(
      const Icon(Ico.adjust_filled),
    );
  });
}
