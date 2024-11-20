class ChartUtils {
  static List<double> calculateWeeklyProgress(List<int> dailyMinutes) {
    // 주간 진행률 계산 로직
    return dailyMinutes.map((minutes) => minutes / 60).toList();
  }
} 