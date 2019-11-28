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
//-------------
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
//------------

bool isThisWinningMove(List possibleMov) {
  return (possibleMov[0].isEmpty && possibleMov[1].isEmpty);
}





main() {
  List<List> currentGameInstance = [
    [1],
    [2],
    [3, 4]
  ];
  print(oneMoveToWin(currentGameInstance));
}
