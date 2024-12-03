import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../utils/constants.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('ko_KR', null);
  }

  void _changeDate(int days) {
    setState(() {
      _selectedDate = _selectedDate.add(Duration(days: days));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.homeTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 날짜 선택 영역
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => _changeDate(-1),
                    ),
                    Text(
                      DateFormat.yMMMMEEEEd('ko').format(_selectedDate),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      onPressed: () => _changeDate(1),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // 운동 기록 카드
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      '오늘의 운동',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildRecordCard(Icons.fitness_center, "운동하기"),
                        _buildRecordCard(Icons.restaurant, "식단"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // 메뉴 그리드
            Expanded(
              child: GestureDetector(
                onHorizontalDragEnd: (details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    _changeDate(-1);
                  } else if (details.velocity.pixelsPerSecond.dx < 0) {
                    _changeDate(1);
                  }
                },
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    _buildMenuCard(
                      icon: Icons.fitness_center,
                      title: '운동 기록',
                      onTap: () {
                        // TODO: 운동 기록 페이지로 이동
                      },
                    ),
                    _buildMenuCard(
                      icon: Icons.calendar_today,
                      title: '운동 일정',
                      onTap: () {
                        // TODO: 운동 일정 페이지로 이동
                      },
                    ),
                    _buildMenuCard(
                      icon: Icons.bar_chart,
                      title: '통계',
                      onTap: () {
                        // TODO: 통계 페이지로 이동
                      },
                    ),
                    _buildMenuCard(
                      icon: Icons.person,
                      title: '프로필',
                      onTap: () {
                        // TODO: 프로필 페이지로 이동
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecordCard(IconData icon, String label) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Container(
        width: 120,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(fontSize: 16)),
            const Icon(Icons.add, size: 20, color: Colors.blue),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 