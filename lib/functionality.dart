class TicTac {
  bool playerOne = false;
  bool playerTwo = false;
  String playerOwin = 'player:O win';
  String playerXwin = 'player:X win';
  String bothOXareEquall = 'draw';
  List grid = [
    ['', '', ''],
    ['', '', ''],
    ['', '', '']
  ];

  String checkWinner(grid) {
    if (grid[0][0] == grid[0][1] && grid[0][1] == grid[0][2]) {
      if (grid[0][0] == 'x') {
        return playerXwin;
      } else if (grid[0][0] == 'o') {
        return playerOwin;
      }
    } else if (grid[0][0] == grid[1][1] && grid[1][1] == grid[2][2]) {
      if (grid[0][0] == 'x') {
        return playerXwin;
      } else if (grid[0][0] == 'o') {
        return playerOwin;
      }
    } else if (grid[0][0] == grid[1][0] && grid[1][0] == grid[2][0]) {
      if (grid[0][0] == 'x') {
        return playerXwin;
      } else if (grid[0][0] == 'o') {
        return playerOwin;
      }
    } else if (grid[1][0] == grid[1][1] && grid[1][0] == grid[1][2]) {
      if (grid[1][0] == 'x') {
        return playerXwin;
      } else if (grid[1][0] == 'o') {
        return playerOwin;
      }
    } else if (grid[0][1] == grid[1][1] && grid[1][1] == grid[2][1]) {
      if (grid[0][1] == 'x') {
        return playerXwin;
      } else if (grid[0][1] == 'o') {
        return playerOwin;
      }
    } else if (grid[0][2] == grid[1][2] && grid[1][2] == grid[2][2]) {
      if (grid[0][2] == 'x') {
        return playerXwin;
      } else if (grid[0][2] == 'o') {
        return playerOwin;
      }
    } else if (grid[2][0] == grid[2][1] && grid[2][0] == grid[2][2]) {
      if (grid[2][2] == 'x') {
        return playerXwin;
      } else if (grid[2][2] == 'o') {
        return playerOwin;
      }
    } else if (grid[2][0] == grid[1][1] && grid[1][1] == grid[0][2]) {
      if (grid[2][0] == 'x') {
        return playerXwin;
      } else if (grid[2][0] == 'o') {
        return playerOwin;
      }
    } else if (grid[0][0] != '' &&
        grid[0][1] != '' &&
        grid[0][2] != '' &&
        grid[1][0] != '' &&
        grid[1][1] != '' &&
        grid[1][2] != '' &&
        grid[2][0] != '' &&
        grid[2][1] != '' &&
        grid[2][2] != '') {
      return bothOXareEquall;
    }
    return 'a';
  }

  void home(r, c) {
    if (playerOne == false && playerTwo == false && grid[r][c] == '' ||
        playerOne == false && playerTwo == true && grid[r][c] == '') {
      grid[r][c] = 'x';

      playerOne = true;
      playerTwo = false;
    } else if (playerOne == true && playerTwo == false && grid[r][c] == '') {
      grid[r][c] = 'o';

      playerTwo = true;
      playerOne = false;
    }
  }

  void newGame() {
    if (checkWinner(grid) != 'a') {
      grid = [
        ['', '', ''],
        ['', '', ''],
        ['', '', '']
      ];
    }
  }
}
