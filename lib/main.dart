import 'package:flutter/material.dart';
import 'functionality.dart';
import 'button.dart';
import 'showdialog.dart';

TicTac ticTac = TicTac();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
                child: Text(
              'TIC TAC TOE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    button(context, 0, 0),
                    button(context, 0, 1),
                    button(context, 0, 2),
                  ],
                ),
                Row(
                  children: [
                    button(context, 1, 0),
                    button(context, 1, 1),
                    button(context, 1, 2),
                  ],
                ),
                Row(
                  children: [
                    button(context, 2, 0),
                    button(context, 2, 1),
                    button(context, 2, 2),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Buttons button(BuildContext context, r, c) {
    return Buttons(
      onPress: () {
        setState(() {
          ticTac.home(r, c);
          if (ticTac.checkWinner(ticTac.grid) != 'a') {
            showAlertDialog(context, ticTac.checkWinner(ticTac.grid));
            ticTac.newGame();
          }
        });
      },
      currentPlayer: ticTac.grid[r][c],
    );
  }
}
