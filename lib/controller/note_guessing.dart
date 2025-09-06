import 'package:fretboard_notes/model/note_data.dart';
import 'dart:math';

String getTarget(String randString, int randFret) {
  int stringIndex = notes.indexOf(randString) + 1;
  int targetIndex = stringIndex + randFret;
  int notesLength = notes.length;
  if (targetIndex >= notesLength) {
    targetIndex = targetIndex - notesLength;
  }
  return notes.elementAt(targetIndex);
}

int getRandFret() {
  return Random().nextInt(numOfFrets);
}


MapEntry<int, String> getRandString() {
  final notesMap = instrument.tuning.notesMap;
  final randomIndex = Random().nextInt(notesMap.length);
  return notesMap.entries.elementAt(randomIndex);
}
