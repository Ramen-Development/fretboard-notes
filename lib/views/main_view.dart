import 'package:flutter/material.dart';
import 'package:fretboard_notes/model/note_data.dart';
import 'package:fretboard_notes/views/config.dart';
import 'package:fretboard_notes/views/fretboard.dart';

class MainView extends StatefulWidget {
  const MainView({super.key, required this.title});
  final String title;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    config.addListener(() {
      setState(() {});
    });
    bool configOpen = false;
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      key: _scaffoldKey,
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
                        onPressed: () => config.guessNote(note, target),
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
        onPressed: () {
          if (!configOpen) {
            _scaffoldKey.currentState?.showBottomSheet((BuildContext context) {
              return showConfigPanel(context);
            });
          } else {
            closeConfigPanel(context);
          }
          configOpen = !configOpen;
        },
        tooltip: 'Settings',
        child: const Icon(Icons.settings),
      ),
    );
  }
}
