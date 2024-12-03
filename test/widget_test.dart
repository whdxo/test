// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test1/main.dart';

void main() {
  testWidgets('로그인 페이지 테스트', (WidgetTester tester) async {
    // 앱 실행
    await tester.pumpWidget(const MyApp());

    // 로그인 페이지의 타이틀 확인
    expect(find.text('로그인'), findsOneWidget);

    // 홈 버튼 아이콘 확인
    expect(find.byIcon(Icons.home), findsOneWidget);
  });
}
