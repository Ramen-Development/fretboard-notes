import 'package:fretboard_notes/model/tuning.dart';
import 'package:fretboard_notes/model/instrument.dart';

Map<InstrumentType, List<Tuning>> predefinedTunings = {
  InstrumentType.guitar: [
    Tuning(name: 'Standard', notes: ['E', 'A', 'D', 'G', 'B', 'E']),
    Tuning(name: 'Drop D', notes: ['D', 'A', 'D', 'G', 'B', 'E']),
    Tuning(name: 'DADGAD', notes: ['D', 'A', 'D', 'G', 'A', 'D']),
    Tuning(name: 'Open G', notes: ['D', 'G', 'D', 'G', 'B', 'D']),
    Tuning(name: 'Open D', notes: ['D', 'A', 'D', 'F#', 'A', 'D']),
    Tuning(name: 'Half Step Down', notes: ['Eb', 'Ab', 'Db', 'Gb', 'Bb', 'Eb']),
    Tuning(name: 'Full Step Down', notes: ['D', 'G', 'C', 'F', 'A', 'D']),
    Tuning(name: 'Double Drop D', notes: ['D', 'A', 'D', 'G', 'B', 'D']),
    Tuning(name: 'Open C', notes: ['C', 'G', 'C', 'G', 'C', 'E']),
    Tuning(name: 'Open E', notes: ['E', 'B', 'E', 'G#', 'B', 'E']),
  ],

  InstrumentType.bass: [
    Tuning(name: 'Standard 4-string', notes: ['E', 'A', 'D', 'G']),
    Tuning(name: 'Drop D', notes: ['D', 'A', 'D', 'G']),
    Tuning(name: 'Half Step Down', notes: ['Eb', 'Ab', 'Db', 'Gb']),
    Tuning(name: '5-string Standard', notes: ['B', 'E', 'A', 'D', 'G']),
    Tuning(name: '6-string Standard', notes: ['B', 'E', 'A', 'D', 'G', 'C']),
  ],

  InstrumentType.ukulele: [
    Tuning(name: 'Standard (C tuning)', notes: ['G', 'C', 'E', 'A']),
    Tuning(name: 'Low G', notes: ['G', 'C', 'E', 'A']),
    Tuning(name: 'D tuning', notes: ['A', 'D', 'F#', 'B']),
    Tuning(name: 'Baritone', notes: ['D', 'G', 'B', 'E']),
  ],

  InstrumentType.banjo: [
    Tuning(name: 'Standard (Open G)', notes: ['G', 'D', 'G', 'B', 'D']),
    Tuning(name: 'Double C', notes: ['G', 'C', 'G', 'C', 'D']),
    Tuning(name: 'Drop C', notes: ['G', 'C', 'G', 'B', 'D']),
    Tuning(name: 'Open D', notes: ['F#', 'D', 'F#', 'A', 'D']),
    Tuning(name: 'Modal G', notes: ['G', 'D', 'G', 'C', 'D']),
  ],

  InstrumentType.other: [
    Tuning(name: 'Custom 6-string', notes: ['C', 'G', 'C', 'F', 'A', 'D']),
    Tuning(name: 'Custom 7-string', notes: ['B', 'E', 'A', 'D', 'G', 'B', 'E']),
  ],
};
