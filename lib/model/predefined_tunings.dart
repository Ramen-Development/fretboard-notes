import 'package:fretboard_notes/model/tuning.dart';
import 'package:fretboard_notes/model/instrument.dart';

Map<InstrumentType, List<Tuning>> predefinedTunings = {
  InstrumentType.guitar: [
    // 6-string guitar tunings
    Tuning(name: 'Standard', notes: ['E', 'A', 'D', 'G', 'B', 'E'], totalStrings: 6),
    Tuning(name: 'Drop D', notes: ['D', 'A', 'D', 'G', 'B', 'E'], totalStrings: 6),
    Tuning(name: 'DADGAD', notes: ['D', 'A', 'D', 'G', 'A', 'D'], totalStrings: 6),
    Tuning(name: 'Open G', notes: ['D', 'G', 'D', 'G', 'B', 'D'], totalStrings: 6),
    Tuning(name: 'Open D', notes: ['D', 'A', 'D', 'F#', 'A', 'D'], totalStrings: 6),
    Tuning(name: 'Half Step Down', notes: ['Eb', 'Ab', 'Db', 'Gb', 'Bb', 'Eb'], totalStrings: 6),
    Tuning(name: 'Full Step Down', notes: ['D', 'G', 'C', 'F', 'A', 'D'], totalStrings: 6),
    Tuning(name: 'Double Drop D', notes: ['D', 'A', 'D', 'G', 'B', 'D'], totalStrings: 6),
    Tuning(name: 'Open C', notes: ['C', 'G', 'C', 'G', 'C', 'E'], totalStrings: 6),
    Tuning(name: 'Open E', notes: ['E', 'B', 'E', 'G#', 'B', 'E'], totalStrings: 6),

    // 7-string guitar tunings
    Tuning(name: '7-string Standard', notes: ['B', 'E', 'A', 'D', 'G', 'B', 'E'], totalStrings: 7),
    Tuning(name: '7-string Drop A', notes: ['A', 'E', 'A', 'D', 'G', 'B', 'E'], totalStrings: 7),
  ],

  InstrumentType.bass: [
    // 4-string bass tunings
    Tuning(name: 'Standard 4-string', notes: ['E', 'A', 'D', 'G'], totalStrings: 4),
    Tuning(name: 'Drop D', notes: ['D', 'A', 'D', 'G'], totalStrings: 4),
    Tuning(name: 'Half Step Down', notes: ['Eb', 'Ab', 'Db', 'Gb'], totalStrings: 4),

    // 5-string bass tunings
    Tuning(name: '5-string Standard', notes: ['B', 'E', 'A', 'D', 'G'], totalStrings: 5),

    // 6-string bass tunings
    Tuning(name: '6-string Standard', notes: ['B', 'E', 'A', 'D', 'G', 'C'], totalStrings: 6),
  ],

  InstrumentType.ukulele: [
    Tuning(name: 'Standard (C tuning)', notes: ['G', 'C', 'E', 'A'], totalStrings: 4),
    Tuning(name: 'Low G', notes: ['G', 'C', 'E', 'A'], totalStrings: 4),
    Tuning(name: 'D tuning', notes: ['A', 'D', 'F#', 'B'], totalStrings: 4),
    Tuning(name: 'Baritone', notes: ['D', 'G', 'B', 'E'], totalStrings: 4),
  ],

  InstrumentType.banjo: [
    Tuning(name: 'Standard (Open G)', notes: ['G', 'D', 'G', 'B', 'D'], totalStrings: 5),
    Tuning(name: 'Double C', notes: ['G', 'C', 'G', 'C', 'D'], totalStrings: 5),
    Tuning(name: 'Drop C', notes: ['G', 'C', 'G', 'B', 'D'], totalStrings: 5),
    Tuning(name: 'Open D', notes: ['F#', 'D', 'F#', 'A', 'D'], totalStrings: 5),
    Tuning(name: 'Modal G', notes: ['G', 'D', 'G', 'C', 'D'], totalStrings: 5),
  ],

  InstrumentType.other: [
    Tuning(name: 'Custom 6-string', notes: ['C', 'G', 'C', 'F', 'A', 'D'], totalStrings: 6),
    Tuning(name: 'Custom 7-string', notes: ['B', 'E', 'A', 'D', 'G', 'B', 'E'], totalStrings: 7),
  ],
};
