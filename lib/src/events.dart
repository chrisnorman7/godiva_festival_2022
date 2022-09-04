import 'stages.dart';
import 'util.dart';

/// The day on friday.
const friday = 2;

/// The day on saturday.
const int saturday = 3;

/// The day on Sunday.
const sunday = 4;

/// An event in the festival.
class FestivalEvent {
  /// Create an instance.
  const FestivalEvent({
    required this.name,
    required this.start,
    required this.stage,
    this.url,
  });

  /// Create a slinky love event.
  FestivalEvent.slinkieLove({
    required final int day,
    required final int hours,
    required final int minutes,
  })  : name = 'Slinkie Love',
        start = getEventDateTime(
          day: day,
          hours: hours,
          minutes: minutes,
        ),
        stage = FestivalStage.serendipity,
        url = 'https://www.godivafestival.com/family-activities/slinkie-love';

  /// Create a Sohan Kailey Bhangra event.
  FestivalEvent.sohanKaileyBhangra({
    required final int day,
    required final int hours,
    required final int minutes,
  })  : name = 'Sohan Kailey Bhangra',
        start = getEventDateTime(day: day, hours: hours, minutes: minutes),
        stage = FestivalStage.serendipity,
        url = 'https://www.godivafestival.com/family-activities/bhangra-tots';

  /// Get a Jason Maverick event.
  FestivalEvent.jasonMaverick({
    required final int day,
    required final int hours,
    required final int minutes,
  })  : name = 'Jason Maverick',
        start = getEventDateTime(day: day, hours: hours, minutes: minutes),
        stage = FestivalStage.serendipity,
        url = 'https://www.godivafestival.com/family-activities/jason-maverick';

  /// Create a Nick Cope event.
  FestivalEvent.nickCope({
    required final int day,
    required final int hours,
    required final int minutes,
  })  : name = 'Nick Cope',
        start = getEventDateTime(day: day, hours: hours, minutes: minutes),
        stage = FestivalStage.serendipity,
        url = 'https://www.godivafestival.com/line/nick-cope';

  /// Create a Loveart - Dream Engine event.
  FestivalEvent.loveartDreamEngine({
    required final int day,
    required final int hours,
    required final int minutes,
  })  : name = 'Loveart - Dream Engine',
        start = getEventDateTime(day: day, hours: hours, minutes: minutes),
        stage = FestivalStage.circus,
        url =
            'https://www.godivafestival.com/family-activities/loveart-dream-engine';

  /// Create a Wonder Woman event.
  FestivalEvent.wonderWoman({
    required final int hours,
    required final int minutes,
  })  : name = 'Wonder Woman',
        start = getEventDateTime(day: sunday, hours: hours, minutes: minutes),
        stage = FestivalStage.circus,
        url = 'https://www.godivafestival.com/family-activities/wonder-woman';

  /// The name of the vent.
  final String name;

  /// The time the event is on.
  final DateTime start;

  /// The stage this event is on.
  final FestivalStage stage;

  /// The URL (if any) to the event description.
  final String? url;
}
