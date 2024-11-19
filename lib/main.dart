import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart'; // Firebase 초기화 주석 처리
// import 'firebase/firebase_options.dart'; // Firebase 설정 주석 처리
import 'screens/welcome_screen.dart'; // WelcomeScreen import

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter 엔진 초기화
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); // Firebase 초기화 주석 처리

  runApp(const MyApp()); // 앱 실행
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const WelcomeScreen(), // WelcomeScreen을 홈 화면으로 설정
    );
  }
}
