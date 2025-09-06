class Tuning {
  final String name;
  final List<String> notes;
  final int totalStrings;
  final Map<int, String> notesMap;

  Tuning({
    required this.name,
    required this.totalStrings,
    required this.notes,
  }) : notesMap = notes.asMap(); // Map to have an index for each note
}
