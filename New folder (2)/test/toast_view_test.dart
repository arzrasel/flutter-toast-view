/*///
/// [Author] Rz Rasel (https://github.com/rzrasel)
/// [Date] 2021/11/5 15:53
///
import "package:flutter/services.dart";
import "package:flutter/material.dart" hide Overlay, OverlayEntry, OverlayState;
import "package:toast_view/src/plugins/toast.dart";
import "package:flutter_test/flutter_test.dart";
import 'package:toast_view/toast_view.dart';

void main() {
  testWidgets('Show toast test', (WidgetTester tester) async {
    await _pumpWidget(tester, onPressed: () {
      showToast('Test toast');
    });
    await tester.tap(find.byKey(_wButtonKey));
    await tester.pumpAndSettle();
    expect(find.byType(ToastContainer), findsOneWidget);
    await tester.pumpAndSettle(_defaultAnimDuration);
    expect(find.byType(ToastContainer), findsOneWidget);
    await tester.pumpAndSettle(_defaultDuration);
    expect(find.byType(ToastContainer), findsNothing);
  });

  testWidgets('Dismiss synchronously', (WidgetTester tester) async {
    await _pumpWidget(tester, onPressed: () {
      final ToastFuture future = showToast('Test toast');
      future.dismiss();
    });
    await tester.tap(find.byKey(_wButtonKey));
    expect(find.byType(ToastContainer), findsNothing);
    await tester.pumpAndSettle(_defaultAnimDuration);
    expect(find.byType(ToastContainer), findsNothing);
  });
}

const Duration _defaultDuration = Duration(milliseconds: 2300);
const Duration _defaultAnimDuration = Duration(milliseconds: 250);

const String _wTitle = 'OKToast test app';
final GlobalKey _wButtonKey = GlobalKey();

Future<void> _pumpWidget(
  WidgetTester tester, {
  VoidCallback? onPressed,
}) async {
  await tester.pumpWidget(
    ToastView(
      animationDuration: _defaultAnimDuration,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text(_wTitle)),
          body: Center(
            child: ElevatedButton(
              key: _wButtonKey,
              child: const Text('Button'),
              onPressed: onPressed,
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle(const Duration(seconds: 2));
}*/
/*
import "package:flutter/services.dart";
import "package:flutter_test/flutter_test.dart";
import "package:toast_view/toast_view.dart";

void main() {
  const MethodChannel channel = MethodChannel('toast_view');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ToastView.platformVersion, '42');
  });
}
*/
