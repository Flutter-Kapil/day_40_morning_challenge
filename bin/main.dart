import 'day39.dart';
// Challenge
// Find the best move given the state of Towers of Hanoi board

bool bestHanoiMove(List<List> towers) {
  return winningMove(hanoiPossibleMoves(towers));
}

bool winningMove(List<List> possibleMoves) {
  for (int i = 0; i < possibleMoves.length; i++) {
    //go through every possible sceanrio
    if (winningStack(possibleMoves[i][2])) {
      print('here in winningMove function');
      return true;
    }
  }

  return false;
}

bool winningStack(List stack) {
  for (int i = 0; i < stack.length; i++) {
    if (stack[i] != i+1) {
      return false;
    }
  }
  return true;
}

main() {
  print(winningStack([1,2,3,4]));
  print(bestHanoiMove([
    [],
    [1],
    [2, 3, 4]
  ]));
}
