import 'package:flutter/material.dart';
class TicTacToeScreen extends StatefulWidget {
  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  List<List<String>> board = List.generate(3, (i) => List.filled(3, ""));

  bool isPlayerOneTurn = true; // true for player one, false for player two
  String winner = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              winner.isNotEmpty ? 'Winner: $winner' : isPlayerOneTurn ? 'Player One' : 'Player Two',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                int row = index ~/ 3;
                int col = index % 3;
                return GestureDetector(
                  onTap: () => _onTileClicked(row, col),
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        board[row][col],
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _resetGame,
              child: Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }

  void _onTileClicked(int row, int col) {
    if (board[row][col].isEmpty && winner.isEmpty) {
      setState(() {
        board[row][col] = isPlayerOneTurn ? 'X' : 'O';
        isPlayerOneTurn = !isPlayerOneTurn;
        winner = _checkForWinner();
      });
    }
  }

  String _checkForWinner() {
    // Check rows
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0].isNotEmpty) {
        return board[i][0];
      }
    }

    // Check columns
    for (int i = 0; i < 3; i++) {
      if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i].isNotEmpty) {
        return board[0][i];
      }
    }

    // Check diagonals
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0].isNotEmpty) {
      return board[0][0];
    }
    if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2].isNotEmpty) {
      return board[0][2];
    }

    // Check for a tie
    if (!board.any((row) => row.any((cell) => cell.isEmpty))) {
      return 'Tie';
    }

    return '';
  }

  void _resetGame() {
    setState(() {
      board = List.generate(3, (i) => List.filled(3, ""));
      isPlayerOneTurn = true;
      winner = "";
    });
  }
}