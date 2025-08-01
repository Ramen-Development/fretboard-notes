import 'package:flutter/material.dart';
import 'package:fretboard_notes/model/instrument.dart';
import 'package:fretboard_notes/model/note_data.dart';
import 'package:fretboard_notes/model/tuning.dart';

class GlobalFretboardConfig extends ChangeNotifier {
  static final GlobalFretboardConfig _instance =
      GlobalFretboardConfig._internal();

  factory GlobalFretboardConfig() {
    return _instance;
  }

  GlobalFretboardConfig._internal();

  InstrumentType? selectedInstrument = instrument.type;
  int? selectedStringCount = instrument.tuning.totalStrings;
  Tuning? selectedTuning = instrument.tuning;

  void guessNote(String note, String target) {
    if (note == target) {
      notifyListeners();
    }
  }

  void setConfig() {
    if (selectedInstrument != null &&
        selectedTuning != null &&
        selectedTuning != instrument.tuning) {
      instrument = Instrument(
        type: selectedInstrument!,
        tuning: selectedTuning!,
      );
      notifyListeners();
    }
  }
}
