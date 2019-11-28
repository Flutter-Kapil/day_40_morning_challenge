import 'day39.dart';
// Challenge
// Find the best move given the state of Towers of Hanoi board

int bestHanoiMove(List<List> towers) {
  int numberOfMovesToWin = 0;
  List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  print(allPossibleMoves);
  if (winningMoveNumber(allPossibleMoves) == null) {
    for (int i = 0; i < allPossibleMoves.length; i++) {
      List<List> allPossibleMovesAgain =
          hanoiPossibleMoves(allPossibleMoves[i]);
      if (winningMoveNumber(allPossibleMovesAgain[i]) != null) {
        return winningMoveNumber(allPossibleMoves[i]);
      }
    }
  }

  // if(winningMoveNumber(allPossibleMoves)==null){
  //   numberOfMovesToWin++;
  //   print('numberOfMovesToWin:$numberOfMovesToWin');
  //   allPossibleMoves.forEach((oneOfTheMovesOutput){
  //     if(bestHanoiMove(oneOfTheMovesOutput)!=null){
  //       //if any of the possible moves result in wiining game after one more move,
  //       //then do this
  //       return int;
  //     }
  //     return bestHanoiMove(oneOfTheMovesOutput);
  //   });
  // }else{
  //   return winningMoveNumber(allPossibleMoves);
  // }
  return winningMoveNumber(allPossibleMoves);
}

int winningMoveNumber(List<List> possibleMoves) {
  for (int i = 0; i < possibleMoves.length; i++) {
    //go through every possible sceanrio
    if (winningStack(possibleMoves[i][2])) {
      // print('here in winningMove function');
      return i;
    }
  }

  return null;
}

bool winningStack(List stack) {
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
