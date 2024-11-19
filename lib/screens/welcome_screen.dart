import 'package:flutter/material.dart';
import 'login_screen.dart'; // 로그인 화면으로 이동하기 위한 import
import 'signup_screen.dart'; // 회원가입 화면으로 이동하기 위한 import

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 화면 크기 가져오기
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: screenSize.width * 0.056,
                top: screenSize.height * 0.66,
                child: SizedBox(
                  width: screenSize.width * 0.88,
                  height: screenSize.height * 0.178,
                  child: Stack(
                    children: [
                      // 로그인 버튼
                      Positioned(
                        left: screenSize.width * 0.008,
                        top: screenSize.height * 0.106,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: screenSize.width * 0.872,
                            height: screenSize.height * 0.073,
                            padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.064,
                              vertical: screenSize.height * 0.015,
                            ),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF2DB5F9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '로그인',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // 회원가입 버튼
                      Positioned(
                        left: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: screenSize.width * 0.872,
                            height: screenSize.height * 0.073,
                            padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.064,
                              vertical: screenSize.height * 0.015,
                            ),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFF2DB5F9)),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '회원가입',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1E1E1E),
                                    fontSize: 16,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // 앱 로고 영역
              Positioned(
                left: 0,
                right: 0,
                top: screenSize.height * 0.172,
                child: const SizedBox(
                  height: 42,
                  child: Text(
                    '핏폭풍',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 32,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ),
              // 하단 바
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.042,
                  padding: EdgeInsets.only(
                    top: screenSize.height * 0.026,
                    bottom: screenSize.height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screenSize.width * 0.357,
                        height: 5,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 