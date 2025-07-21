import 'package:fretboard_notes/model/tuning.dart';

enum InstrumentType { guitar, bass, ukulele, banjo, other }

class Instrument {
  final InstrumentType type;
  final String name;
  final int strings;
  final Tuning tuning;

  Instrument({
    required this.type,
    required this.name,
    required this.strings,
    required this.tuning,
  });
}
