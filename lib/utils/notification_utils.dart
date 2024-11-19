class NotificationUtils {
  static bool isValidNotificationTime(DateTime time) {
    return time.isAfter(DateTime.now());
  }
} 