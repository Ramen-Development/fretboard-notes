import 'package:fretboard_notes/model/instrument.dart';
import 'package:fretboard_notes/model/tuning.dart';

class GlobalFretboardConfig {
  static final GlobalFretboardConfig _instance = GlobalFretboardConfig._internal();

  factory GlobalFretboardConfig() {
    return _instance;
  }

  GlobalFretboardConfig._internal();

  InstrumentType? _selectedInstrument;
  int? _selectedStringCount;
  Tuning? _selectedTuning;

  InstrumentType? get selectedInstrument => _selectedInstrument;
  set selectedInstrument(InstrumentType? value) => _selectedInstrument = value;

  int? get selectedStringCount => _selectedStringCount;
  set selectedStringCount(int? value) => _selectedStringCount = value;

  Tuning? get selectedTuning => _selectedTuning;
  set selectedTuning(Tuning? value) => _selectedTuning = value;
}
