import 'events.dart';
import 'stages.dart';

/// Return a date time on the given [day] with given [hours] and [minutes].
DateTime getEventDateTime({
  required final int day,
  required final int hours,
  required final int minutes,
}) =>
    DateTime(2022, 9, day, hours, minutes);

/// Pad an hour or minute [value].
String padValue(final int value) => value.toString();

/// Pretty-print a time.
String prettyDateTime(
  final DateTime dateTime, {
  final bool includeDay = false,
}) {
  final buffer = StringBuffer();
  if (includeDay) {
    switch (dateTime.day) {
      case friday:
        buffer.write('Friday');
        break;
      case saturday:
        buffer.write('Saturday');
        break;
      case sunday:
        buffer.write('Sunday');
        break;
      default:
        buffer.write('${padValue(dateTime.day)} September');
        break;
    }
    buffer.write(' ');
  }
  buffer
    ..write(padValue(dateTime.hour))
    ..write(':')
    ..write(padValue(dateTime.minute));
  return buffer.toString();
}

/// Get the name of the given [stage].
String getStageName(final FestivalStage stage) {
  switch (stage) {
    case FestivalStage.serendipity:
      return 'Serendipity Stage (Family Field)';
    case FestivalStage.circus:
      return 'Circus Ring (Family Field)';
    case FestivalStage.mainStage:
      return 'Main Stage';
    case FestivalStage.nextStage:
      return 'The Next Stage';
    case FestivalStage.bbc:
      return 'BBC CWR Stage';
    case FestivalStage.hilltop:
      return 'Hilltop Stage';
  }
}
