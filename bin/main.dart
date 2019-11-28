import 'day39.dart';

// Challenge
// Find the best move given the state of Towers of Hanoi board
List<List> oneMoveToWin(List<List> towers) {
  List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  print(allPossibleMoves);
  return allPossibleMoves[winningMoveNumber(allPossibleMoves)];
}


int winningMoveNumber(List<List> possibleMoves) {
  for (int i = 0; i < possibleMoves.length; i++) {
    //go through every possible sceanrio
    if (isThisWinningMove(possibleMoves[i])) {
      // print('here in winningMove function');
      return i;
    }
  }

  return null;
}

bool isThisWinningMove(List possibleMov) {
  if (possibleMov[0].isEmpty && possibleMov[1].isEmpty) {
    return true;
  }
  return false;
}

//------------------------ends here---------------
int bestHanoiMove(List<List> towers) {
  int numberOfMovesToWin = 0;
  List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  print(allPossibleMoves);

  //-----------
  if (winningMoveNumber(allPossibleMoves) == null) {
    for (int i = 0; i < allPossibleMoves.length; i++) {
      List<List> allPossibleMovesAgain =
          hanoiPossibleMoves(allPossibleMoves[i]);
      if (winningMoveNumber(allPossibleMovesAgain) != null) {
        print('wining move in 2nd case is $allPossibleMovesAgain');
        print(winningMoveNumber(allPossibleMoves));
        return winningMoveNumber(allPossibleMoves);
      }
    }
  }
  return winningMoveNumber(allPossibleMoves);
}


bool winningStack(List stack) {
  //bug fix, otherwise even [1,2,3] , [1,2] etc are also counted as winning tower
  if (stack.length != 4) {
    return false;
  }
  for (int i = 0; i < stack.length; i++) {
    if (stack[i] != i + 1) {
      return false;
    }
  }
  return true;
}

main() {
  print(winningStack([1, 2, 3, 4]));
  List<List> currentGameInstance = [
    [1],
    [],
    [2, 3, 4]
  ];
  print(bestHanoiMove(currentGameInstance));
}
