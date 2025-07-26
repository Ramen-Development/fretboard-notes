import 'package:flutter/material.dart';
import 'package:fretboard_notes/model/instrument.dart';
import 'package:fretboard_notes/model/predefined_tunings.dart';
import 'package:fretboard_notes/model/tuning.dart';
import 'package:fretboard_notes/model/global/fretboard_config.dart';

Container showConfigPanel(BuildContext context) {
  final config = GlobalFretboardConfig();

  InstrumentType? selectedInstrument = config.selectedInstrument;
  int? selectedStringCount = config.selectedStringCount;
  Tuning? selectedTuning = config.selectedTuning;

  return Container(
    margin: const EdgeInsets.only(top: 10, bottom: 120),
    height: 270,
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: StatefulBuilder(
      builder: (BuildContext context, setState) {
        List<int> getAvailableStringCounts(InstrumentType type) {
          final tunings = predefinedTunings[type] ?? [];
          final uniqueCounts = tunings.map((t) => t.totalStrings).toSet().toList();
          uniqueCounts.sort();
          return uniqueCounts;
        }

        List<Tuning> getAvailableTunings(InstrumentType type, int stringCount) {
          return (predefinedTunings[type] ?? [])
              .where((t) => t.totalStrings == stringCount)
              .toList();
        }

        Widget buildRow(String label, Widget dropdown) {
          return Row(
            children: [
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(label, style: const TextStyle(fontSize: 16)),
                ),
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: dropdown,
                ),
              ),
            ],
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Configuration', style: TextStyle(fontSize: 18)),
            buildRow(
              "Instrument",
              DropdownMenuTheme(
                data: const DropdownMenuThemeData(),
                child: DropdownMenu<InstrumentType>(
                  initialSelection: selectedInstrument,
                  onSelected: (value) {
                    setState(() {
                      selectedInstrument = value;
                      selectedStringCount = null;
                      selectedTuning = null;
                      config.selectedInstrument = value;
                      config.selectedStringCount = null;
                      config.selectedTuning = null;
                    });
                  },
                  dropdownMenuEntries: InstrumentType.values.map((type) {
                    return DropdownMenuEntry(
                      value: type,
                      label: type.label,
                    );
                  }).toList(),
                ),
              ),
            ),
            buildRow(
              "# of strings",
              DropdownMenuTheme(
                data: const DropdownMenuThemeData(),
                child: DropdownMenu<int>(
                  enabled: selectedInstrument != null,
                  initialSelection: selectedStringCount,
                  onSelected: (value) {
                    setState(() {
                      selectedStringCount = value;
                      selectedTuning = null;
                      config.selectedStringCount = value;
                      config.selectedTuning = null;
                    });
                  },
                  dropdownMenuEntries: selectedInstrument == null
                      ? []
                      : getAvailableStringCounts(selectedInstrument!).map((count) {
                          return DropdownMenuEntry(
                            value: count,
                            label: count.toString(),
                          );
                        }).toList(),
                ),
              ),
            ),
            buildRow(
              "Tuning",
              DropdownMenuTheme(
                data: const DropdownMenuThemeData(),
                child: DropdownMenu<Tuning>(
                  enabled: selectedInstrument != null && selectedStringCount != null,
                  initialSelection: selectedTuning,
                  onSelected: (value) {
                    setState(() {
                      selectedTuning = value;
                      config.selectedTuning = value;
                    });
                  },
                  dropdownMenuEntries: (selectedInstrument != null && selectedStringCount != null)
                      ? getAvailableTunings(selectedInstrument!, selectedStringCount!).map((tuning) {
                          return DropdownMenuEntry(
                            value: tuning,
                            label: tuning.name,
                          );
                        }).toList()
                      : [],
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}

void closeConfigPanel(BuildContext context) {
  Navigator.pop(context);
}
