import 'package:fretboard_notes/model/tuning.dart';

enum InstrumentType { guitar, bass, ukulele, banjo, other }

extension InstrumentTypeExtension on InstrumentType {
  String get label {
    switch (this) {
      case InstrumentType.guitar:
        return 'Guitar';
      case InstrumentType.bass:
        return 'Bass';
      case InstrumentType.ukulele:
        return 'Ukulele';
      case InstrumentType.banjo:
        return 'Banjo';
      case InstrumentType.other:
        return 'Other';
    }
  }
}

class Instrument {
  final InstrumentType type;
  final Tuning tuning;

  Instrument({required this.type, required this.tuning});
}
