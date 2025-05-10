import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String title = 'Ramen fretboard notes';
    return MaterialApp(
      title: title,
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Set<String> notes = {
    'C',
    'C#',
    'Db',
    'D',
    'D#',
    'Eb',
    'E',
    'F',
    'F#',
    'Gb',
    'G',
    'G#',
    'Ab',
    'A',
    'A#',
    'Bb',
    'B',
  };
  Set<String> strings = {'G', 'D', 'A', 'E'};
  int numOfFrets = 12;

  void reloadFretboard() {
    setState(() {});
  }

  Widget fretboard() {
    int randFret = Random().nextInt(numOfFrets);
    String randString = strings.elementAt(Random().nextInt(strings.length));
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
          for (String string in strings)
            TableRow(
              children: [
                TableCell(child: Text(string)),
                for (int fret = 0; fret < numOfFrets; fret++)
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child:
                            (fret == randFret && string == randString)
                                ? Icon(Icons.circle)
                                : (null),
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              fretboard(),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                child: Wrap(
                  children: [
                    for (String note in notes)
                      FilledButton.tonal(
                        onPressed: reloadFretboard,
                        child: Text(note),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (null),
        tooltip: 'Settings',
        child: const Icon(Icons.settings),
      ),
    );
  }
}
