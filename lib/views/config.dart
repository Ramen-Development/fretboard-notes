import 'package:flutter/material.dart';

Container showConfigPanel(BuildContext context) {
  return Container(
    height: 200,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text('Configuration'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Instrument"),
              DropdownMenu(
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: "Guitar"),
                  DropdownMenuEntry(value: 2, label: "Bass"),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Tuning"),
              DropdownMenu(
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: "Standard"),
                  DropdownMenuEntry(value: 2, label: "Drop D"),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

void closeConfigPanel(BuildContext context) {
  Navigator.pop(context);
}
