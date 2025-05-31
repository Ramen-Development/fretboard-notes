import 'package:fretboard_notes/model/note_data.dart';
import 'dart:math';

String setTarget(String randString, int randFret) {
  int stringIndex = notes.indexOf(randString) + 1;
  int targetIndex = stringIndex + randFret;
  int notesLength = notes.length;
  if (targetIndex >= notesLength) {
    targetIndex = targetIndex - notesLength;
  }
  return notes.elementAt(targetIndex);
}

int setRandFret() {
  return Random().nextInt(numOfFrets);
}

String setRandString() {
  return strings.elementAt(Random().nextInt(strings.length));
}
