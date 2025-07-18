class TickResult {
  final int tick;

  TickResult({required this.tick});

  @override
  String toString() => 'TickResult(tick: $tick)';
}

extension DateTimeExtension on DateTime {
  DateTime truncateToMinutes() {
    return copyWith(second: 0, millisecond: 0, microsecond: 0);
  }

  DateTime truncateToHour() {
    return copyWith(minute: 0, second: 0, millisecond: 0, microsecond: 0);
  }

  DateTime truncateToDay() {
    return copyWith(
        hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
  }

  static DateTime truncateDateToDay(DateTime date) {
    return date.copyWith(
        hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
  }

  String toHourMinute() {
    return "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
  }

  String toHourMinuteSecondMillisecond() {
    return "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}.${millisecond.toString().padLeft(3, '0')}";
  }
}
