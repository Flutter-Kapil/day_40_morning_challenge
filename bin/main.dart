import 'day39.dart';

// Challenge
// Find the best move given the state of Towers of Hanoi board

List<List> twoMoveToWin(List<List> towers) {
  List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  print(allPossibleMoves);
  int winningMoveIndex;
  for (int i = 0; i < allPossibleMoves.length; i++) {
    //go through every possible sceanrio
    if (isThisWinningMove(allPossibleMoves[i])) {
      // print('here in winningMove function');
      winningMoveIndex= i;
    }
  }
  if(winningMoveIndex ==null){
    return null;
  }
  return allPossibleMoves[winningMoveIndex];
}
List<List> oneMoveToWin(List<List> towers) {
  List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  print(allPossibleMoves);
  for (int i = 0; i < allPossibleMoves.length; i++) {
    //go through every possible sceanrio
    if (isThisWinningMove(allPossibleMoves[i])) {
      // print('here in winningMove function');
      return allPossibleMoves[i];
    }
  }
  return null;
}


// int winningMoveIndex(List<List> possibleMoves) {
//   for (int i = 0; i < possibleMoves.length; i++) {
//     //go through every possible sceanrio
//     if (isThisWinningMove(possibleMoves[i])) {
//       // print('here in winningMove function');
//       return i;
//     }
//   }

//   return null;
// }

bool isThisWinningMove(List possibleMov) {
  return (possibleMov[0].isEmpty && possibleMov[1].isEmpty);
}

//------------------------ends here---------------
// int bestHanoiMove(List<List> towers) {
//   int numberOfMovesToWin = 0;
//   List<List> allPossibleMoves = hanoiPossibleMoves(towers);
//   print(allPossibleMoves);

  //-----------
//   if (winningMoveIndex(allPossibleMoves) == null) {
//     for (int i = 0; i < allPossibleMoves.length; i++) {
//       List<List> allPossibleMovesAgain =
//           hanoiPossibleMoves(allPossibleMoves[i]);
//       if (winningMoveIndex(allPossibleMovesAgain) != null) {
//         print('wining move in 2nd case is $allPossibleMovesAgain');
//         print(winningMoveIndex(allPossibleMoves));
//         return winningMoveIndex(allPossibleMoves);
//       }
//     }
//   }
//   return winningMoveIndex(allPossibleMoves);
// }


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
    [2],
    [3, 4]
  ];
  print(oneMoveToWin(currentGameInstance));
}
