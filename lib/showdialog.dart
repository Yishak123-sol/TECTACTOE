import 'package:flutter/material.dart';

void showAlertDialog(context, text) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text(
      "PLay Again",
      style: TextStyle(fontSize: 20),
    ),
    onPressed: () {
      Navigator.of(context).pop(); // dismiss dial
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Center(
        child: Text(
      "Winner!",
      style: TextStyle(fontSize: 35),
    )),
    content: Text(
      text.toUpperCase(),
      style: const TextStyle(fontSize: 25),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
