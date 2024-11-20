class NotificationModel {
  final String id;
  final String title;
  final String body;
  final DateTime scheduledTime;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.scheduledTime,
  });
} 