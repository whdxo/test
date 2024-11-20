import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.homeTitle),
      ),
      body: Center(
        child: CustomButton(
          text: '시작하기',
          onPressed: () {
            // TODO: 구현 예정
          },
        ),
      ),
    );
  }
} 