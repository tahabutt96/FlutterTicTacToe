import 'package:flutter/material.dart';
import 'package:tic_tac_toe/provider/game_board_provider.dart';
import 'package:tic_tac_toe/views/game_board_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Text(
              "Walturn LLC - Flutter Engineering Exercise (Tic Tac Toe)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.88,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "X";
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "Play as X",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "O";
                    context.read<GameBoardProvider>().aiTurn();
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "Play as O",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
           
            ],
        ),
      ),
    );
  }
}
