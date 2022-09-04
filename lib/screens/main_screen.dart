import 'package:backstreets_widgets/screens/tabbed_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../src/events.dart';
import '../src/stages.dart';
import '../src/util.dart';

/// A widget that shows the events.
class MainScreen extends StatefulWidget {
  /// Create an instance.
  const MainScreen({
    super.key,
  });

  /// Create state for this widget.
  @override
  MainScreenState createState() => MainScreenState();
}

/// State for [MainScreen].
class MainScreenState extends State<MainScreen> {
  /// Build a widget.
  @override
  Widget build(final BuildContext context) {
    final events = [
      // Family Field.
      FestivalEvent(
        name: "Brutus Gold's Love Train",
        start: getEventDateTime(day: saturday, hours: 19, minutes: 30),
        stage: FestivalStage.serendipity,
        url:
            'https://www.godivafestival.com/family-activities/brutus-golds-love-train',
      ),
      FestivalEvent(
        name: 'Sid Bowfin',
        start: getEventDateTime(day: saturday, hours: 17, minutes: 55),
        stage: FestivalStage.serendipity,
      ),
      FestivalEvent.slinkieLove(day: saturday, hours: 17, minutes: 45),
      FestivalEvent.sohanKaileyBhangra(day: saturday, hours: 17, minutes: 15),
      FestivalEvent.slinkieLove(day: saturday, hours: 16, minutes: 55),
      FestivalEvent(
        name: 'Elite Dance',
        start: getEventDateTime(day: saturday, hours: 16, minutes: 25),
        stage: FestivalStage.serendipity,
      ),
      FestivalEvent.jasonMaverick(day: saturday, hours: 15, minutes: 50),
      FestivalEvent.sohanKaileyBhangra(day: saturday, hours: 15, minutes: 20),
      FestivalEvent.slinkieLove(day: saturday, hours: 15, minutes: 0),
      FestivalEvent(
        name: 'Elite Dance',
        start: getEventDateTime(day: saturday, hours: 14, minutes: 30),
        stage: FestivalStage.serendipity,
      ),
      FestivalEvent.jasonMaverick(day: saturday, hours: 13, minutes: 55),
      FestivalEvent.sohanKaileyBhangra(day: saturday, hours: 13, minutes: 30),
      FestivalEvent.slinkieLove(day: saturday, hours: 13, minutes: 10),
      FestivalEvent(
        name: 'Sid Bowfin',
        start: getEventDateTime(day: saturday, hours: 12, minutes: 30),
        stage: FestivalStage.serendipity,
      ),
      FestivalEvent(
        name: 'Sid Bowfin',
        start: getEventDateTime(day: sunday, hours: 17, minutes: 35),
        stage: FestivalStage.serendipity,
      ),
      FestivalEvent.sohanKaileyBhangra(day: sunday, hours: 17, minutes: 10),
      FestivalEvent.jasonMaverick(day: sunday, hours: 16, minutes: 30),
      FestivalEvent.nickCope(day: sunday, hours: 15, minutes: 40),
      FestivalEvent.sohanKaileyBhangra(day: sunday, hours: 14, minutes: 55),
      FestivalEvent.jasonMaverick(day: sunday, hours: 14, minutes: 15),
      FestivalEvent.nickCope(day: sunday, hours: 13, minutes: 25),
      FestivalEvent.sohanKaileyBhangra(day: sunday, hours: 12, minutes: 40),
      FestivalEvent(
        name: 'Sid Bowfin',
        start: getEventDateTime(day: sunday, hours: 12, minutes: 30),
        stage: FestivalStage.serendipity,
      ),
      FestivalEvent.loveartDreamEngine(day: saturday, hours: 18, minutes: 20),
      FestivalEvent.loveartDreamEngine(day: saturday, hours: 17, minutes: 35),
      FestivalEvent.loveartDreamEngine(day: saturday, hours: 16, minutes: 55),
      FestivalEvent.loveartDreamEngine(day: saturday, hours: 15, minutes: 30),
      FestivalEvent.loveartDreamEngine(day: saturday, hours: 14, minutes: 5),
      FestivalEvent.loveartDreamEngine(day: saturday, hours: 13, minutes: 0),
      FestivalEvent.loveartDreamEngine(day: sunday, hours: 18, minutes: 20),
      FestivalEvent(
        name: 'Phase one - Steel Pan Band',
        start: getEventDateTime(day: sunday, hours: 17, minutes: 55),
        stage: FestivalStage.circus,
      ),
      FestivalEvent.loveartDreamEngine(day: sunday, hours: 17, minutes: 35),
      FestivalEvent.wonderWoman(hours: 17, minutes: 10),
      FestivalEvent.loveartDreamEngine(day: sunday, hours: 16, minutes: 55),
      FestivalEvent(
        name: 'Strong Enough',
        start: getEventDateTime(day: sunday, hours: 16, minutes: 15),
        stage: FestivalStage.circus,
      ),
      FestivalEvent(
        name: 'Phase one - Steel Pan Band',
        start: getEventDateTime(day: sunday, hours: 15, minutes: 45),
        stage: FestivalStage.circus,
      ),
      FestivalEvent.loveartDreamEngine(day: sunday, hours: 15, minutes: 30),
      FestivalEvent.wonderWoman(hours: 15, minutes: 5),
      FestivalEvent(
        name: 'Strong Enough',
        start: getEventDateTime(day: sunday, hours: 14, minutes: 25),
        stage: FestivalStage.circus,
      ),
      FestivalEvent.loveartDreamEngine(day: sunday, hours: 14, minutes: 5),
      FestivalEvent.wonderWoman(hours: 13, minutes: 40),
      FestivalEvent(
        name: 'Phase one - Steel Pan Band',
        start: getEventDateTime(day: sunday, hours: 13, minutes: 15),
        stage: FestivalStage.circus,
      ),
      FestivalEvent.loveartDreamEngine(day: sunday, hours: 13, minutes: 0),
      FestivalEvent(
        name: 'Hawkwise Falconry',
        start: getEventDateTime(day: sunday, hours: 12, minutes: 15),
        stage: FestivalStage.circus,
      ),

      // Main Field.
      FestivalEvent(
        name: 'The Libertines',
        start: getEventDateTime(day: friday, hours: 20, minutes: 55),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/friday/libertines',
      ),
      FestivalEvent(
        name: 'Idle Noise',
        start: getEventDateTime(day: friday, hours: 19, minutes: 45),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/friday/idle-noise',
      ),
      FestivalEvent(
        name: 'Monastery',
        start: getEventDateTime(day: friday, hours: 19, minutes: 0),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/friday-1/monastery',
      ),
      FestivalEvent(
        name: 'Cov Kozaks',
        start: getEventDateTime(day: friday, hours: 18, minutes: 10),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/friday/cov-kozaks',
      ),
      FestivalEvent(
        name: 'Tom Grennan',
        start: getEventDateTime(day: saturday, hours: 21, minutes: 20),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/tom-grennan',
      ),
      FestivalEvent(
        name: 'KATY B',
        start: getEventDateTime(day: saturday, hours: 21, minutes: 00),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/katy-b',
      ),
      FestivalEvent(
        name: 'A1 x J1',
        start: getEventDateTime(day: saturday, hours: 19, minutes: 20),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/a1-x-j1',
      ),
      FestivalEvent(
        name: 'MUGUN',
        start: getEventDateTime(day: saturday, hours: 19, minutes: 0),
        stage: FestivalStage.mainStage,
      ),
      FestivalEvent(
        name: 'Gracey',
        start: getEventDateTime(day: saturday, hours: 18, minutes: 25),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/gracey',
      ),
      FestivalEvent(
        name: 'Neville Staple - From The Specials',
        start: getEventDateTime(day: saturday, hours: 17, minutes: 15),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/neville-staple-specials',
      ),
      FestivalEvent(
        name: 'The Asian Fusion ft Sunit Music, H Dhami, Tasha Tah, Rio Jai, '
            'Ambition Dancers and Learning with Lyra',
        start: getEventDateTime(day: saturday, hours: 16, minutes: 00),
        stage: FestivalStage.mainStage,
      ),
      FestivalEvent(
        name: 'The Subways',
        start: getEventDateTime(day: saturday, hours: 15, minutes: 0),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/subways/1',
      ),
      FestivalEvent(
        name: 'The Dirt Road Band',
        start: getEventDateTime(day: saturday, hours: 14, minutes: 5),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/sunday/dirt-road-band',
      ),
      FestivalEvent(
        name: 'Nadia Javed',
        start: getEventDateTime(day: saturday, hours: 13, minutes: 20),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/nadia-javed',
      ),
      FestivalEvent(
        name: 'Samo Songs',
        start: getEventDateTime(day: saturday, hours: 12, minutes: 40),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday-1/samo-songs',
      ),
      FestivalEvent(
        name: 'Danny Ansell Music',
        start: getEventDateTime(day: saturday, hours: 12, minutes: 10),
        stage: FestivalStage.mainStage,
      ),
      FestivalEvent(
        name: 'Bananarama',
        start: getEventDateTime(day: sunday, hours: 17, minutes: 45),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/sunday/bananarama',
      ),
      FestivalEvent(
        name: 'The Feeling',
        start: getEventDateTime(day: sunday, hours: 16, minutes: 45),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/sunday/feeling',
      ),
      FestivalEvent(
        name: 'The Craig Charles Funk & Soul Club',
        start: getEventDateTime(day: sunday, hours: 15, minutes: 25),
        stage: FestivalStage.mainStage,
        url:
            'https://www.godivafestival.com/sunday/craig-charles-funk-soul-club',
      ),
      FestivalEvent(
        name: 'Apache Indian',
        start: getEventDateTime(day: sunday, hours: 14, minutes: 40),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/sunday/apache-indian',
      ),
      FestivalEvent(
        name: 'Dream Wife',
        start: getEventDateTime(day: sunday, hours: 13, minutes: 50),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/saturday/dream-wife',
      ),
      FestivalEvent(
        name: 'Caitlin McCarthy',
        start: getEventDateTime(day: sunday, hours: 13, minutes: 25),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/sunday/caitlin-mccarthy',
      ),
      FestivalEvent(
        name: 'Sipho',
        start: getEventDateTime(day: sunday, hours: 12, minutes: 50),
        stage: FestivalStage.mainStage,
        url: 'https://www.godivafestival.com/sunday/sipho',
      ),
      FestivalEvent(
        name: 'Sandra Godley and the Gospel Collective',
        start: getEventDateTime(day: sunday, hours: 12, minutes: 15),
        stage: FestivalStage.mainStage,
        url:
            'https://www.godivafestival.com/sunday/sandra-godley-gospel-collective',
      ),
      FestivalEvent(
        name: 'Doc Scott',
        start: getEventDateTime(day: saturday, hours: 21, minutes: 10),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday/doc-scott',
      ),
      FestivalEvent(
        name: 'Fabio and Grooverider',
        start: getEventDateTime(day: saturday, hours: 20, minutes: 20),
        stage: FestivalStage.nextStage,
      ),
      FestivalEvent(
        name: 'The Man Parris Experience ft Noizee B and Kayne Lynas',
        start: getEventDateTime(day: saturday, hours: 19, minutes: 20),
        stage: FestivalStage.nextStage,
      ),
      FestivalEvent(
        name: 'Georgie Riot and MC Toddlah',
        start: getEventDateTime(day: saturday, hours: 18, minutes: 30),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday/georgie-riot',
      ),
      FestivalEvent(
        name: 'https://www.godivafestival.com/saturday-1/bally-boom',
        start: getEventDateTime(day: saturday, hours: 17, minutes: 45),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday-1/bally-boom',
      ),
      FestivalEvent(
        name: 'DJ EDU & Eugy',
        start: getEventDateTime(day: saturday, hours: 16, minutes: 35),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday/dj-edu',
      ),
      FestivalEvent(
        name: 'DJ Jazzie Jay',
        start: getEventDateTime(day: saturday, hours: 15, minutes: 55),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday/jazzy',
      ),
      FestivalEvent(
        name: 'The Skatuesques',
        start: getEventDateTime(day: saturday, hours: 15, minutes: 5),
        stage: FestivalStage.nextStage,
      ),
      FestivalEvent(
        name: 'RudeSix',
        start: getEventDateTime(day: saturday, hours: 14, minutes: 15),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday/rudesix',
      ),
      FestivalEvent(
        name: 'Daniel Badura',
        start: getEventDateTime(day: saturday, hours: 13, minutes: 35),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday-1/daniel-badura',
      ),
      FestivalEvent(
        name: 'Jessie Lea',
        start: getEventDateTime(day: saturday, hours: 12, minutes: 55),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday-1/jessie-lea',
      ),
      FestivalEvent(
        name: 'DJ Callum',
        start: getEventDateTime(day: saturday, hours: 12, minutes: 15),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/line/dj-callum',
      ),
      FestivalEvent(
        name: 'Beardyman',
        start: getEventDateTime(day: sunday, hours: 17, minutes: 50),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday/beardyman',
      ),
      FestivalEvent(
        name: 'Ghost Town DJs',
        start: getEventDateTime(day: sunday, hours: 15, minutes: 45),
        stage: FestivalStage.nextStage,
      ),
      FestivalEvent(
        name: 'Coventry Music Trio',
        start: getEventDateTime(day: sunday, hours: 15, minutes: 55),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday-1/coventry-music-trio',
      ),
      FestivalEvent(
        name: 'The Tin Smiths ',
        start: getEventDateTime(day: sunday, hours: 15, minutes: 30),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday-1/tin-smiths',
      ),
      FestivalEvent(
        name: 'Kyron',
        start: getEventDateTime(day: sunday, hours: 15, minutes: 5),
        stage: FestivalStage.nextStage,
      ),
      FestivalEvent(
        name: 'Delilah',
        start: getEventDateTime(day: sunday, hours: 14, minutes: 40),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday-1/delilah',
      ),
      FestivalEvent(
        name: 'Mugshot',
        start: getEventDateTime(day: sunday, hours: 14, minutes: 15),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday/mugshot',
      ),
      FestivalEvent(
        name: 'G3NNA ',
        start: getEventDateTime(day: sunday, hours: 13, minutes: 50),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday-1/g3nna',
      ),
      FestivalEvent(
        name: 'Abbi Rowberry',
        start: getEventDateTime(day: sunday, hours: 13, minutes: 25),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/saturday-1/abbi-rowberry',
      ),
      FestivalEvent(
        name: "YolanDa's Band Jam",
        start: getEventDateTime(day: sunday, hours: 12, minutes: 20),
        stage: FestivalStage.nextStage,
        url: 'https://www.godivafestival.com/sunday/yolanda-brown',
      ),
    ]..sort(
        (final a, final b) => a.start.compareTo(b.start),
      );
    final now = DateTime.now();
    final onNow = <FestivalEvent>[];
    for (final event in events) {
      final afterEvents = events
          .where(
            (final element) =>
                element.stage == event.stage &&
                element.start.isAfter(event.start),
          )
          .toList();
      final nextEvent = afterEvents.isEmpty ? null : afterEvents.first;
      if (event.start.day == now.day) {
        if (event.start.isBefore(now) &&
            (nextEvent == null || nextEvent.start.isAfter(now))) {
          onNow.add(event);
        }
      }
    }
    return TabbedScaffold(
      tabs: [
        TabbedScaffoldTab(
          title: 'On Now',
          icon: Text('${onNow.length}'),
          builder: (final context) => getEventsListView(onNow),
        ),
        ...FestivalStage.values.map<TabbedScaffoldTab>((final e) {
          final stageEvents =
              events.where((final element) => element.stage == e).toList();
          return TabbedScaffoldTab(
            title: getStageName(e),
            icon: Text(stageEvents.length.toString()),
            builder: (final context) => getEventsListView(stageEvents),
          );
        })
      ],
    );
  }

  /// Show the given [events].
  Widget getEventsListView(final List<FestivalEvent> events) {
    final now = DateTime.now();
    return ListView.builder(
      itemBuilder: (final context, final index) {
        final event = events[index];
        final nextEvent =
            index == (events.length - 1) ? null : events[index + 1];
        final selected = now.isAfter(event.start) &&
            (nextEvent == null || nextEvent.start.isAfter(now));
        return ListTile(
          autofocus: selected,
          selected: selected,
          title: Text(
            '${event.name} (${prettyDateTime(
              event.start,
              includeDay: true,
            )})',
          ),
          subtitle: Text(getStageName(event.stage)),
          onTap: () {
            final url = event.url;
            if (url != null) {
              launchUrl(Uri.parse(url));
            }
          },
        );
      },
      itemCount: events.length,
    );
  }
}
