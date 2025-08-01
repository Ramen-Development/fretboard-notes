import 'package:fretboard_notes/model/predefined_tunings.dart';

import 'instrument.dart';

List<String> notes = [
  'C',
  'C#',
  // 'Db',
  'D',
  'D#',
  // 'Eb',
  'E',
  'F',
  'F#',
  // 'Gb',
  'G',
  'G#',
  // 'Ab',
  'A',
  'A#',
  // 'Bb',
  'B',
];
Instrument instrument = Instrument(
  type: InstrumentType.guitar,
  tuning: predefinedTunings[InstrumentType.guitar]!.first,
);

int numOfFrets = 12;
