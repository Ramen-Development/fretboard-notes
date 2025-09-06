import 'package:flutter/material.dart';
import 'package:fretboard_notes/controller/note_guessing.dart';
import 'package:fretboard_notes/model/note_data.dart';

String target = 'C';
Widget fretboard() {
  int randFret = getRandFret();
  final randString = getRandString();
  target = getTarget(randString.value, randFret);
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(8),
    child: Table(
      border: TableBorder(
        horizontalInside: BorderSide(color: Colors.white),
        verticalInside: BorderSide(color: Colors.white),
      ),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        for (final entry in instrument.tuning.notesMap.entries)
        TableRow(
          children: [
            TableCell(child: Text(entry.value)), // note string
            for (int fret = 0; fret < numOfFrets; fret++)
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: (fret == randFret && entry.key == randString.key)
                        ? Icon(Icons.circle)
                        : null,
                  ),
                ),
              ),
          ],
        ),
      ],
    ),
  );
}
