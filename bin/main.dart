import 'day39.dart';

// Challenge
// Find the best move given the state of Towers of Hanoi board
 List<List> threeMoveToWin(List<List> towers) {
   List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  for (int i = 0; i < allPossibleMoves.length; i++) {
    if (twoMoveToWin(allPossibleMoves[i])!=null) {
      return allPossibleMoves[i];
    }
  }
  return null;
}
//-------
List<List> twoMoveToWin(List<List> towers) {
   List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  for (int i = 0; i < allPossibleMoves.length; i++) {
    if (oneMoveToWin(allPossibleMoves[i])!=null) {
      return allPossibleMoves[i];
    }
  }
  return null;
}
//-------------
List<List> oneMoveToWin(List<List> towers) {
  List<List> allPossibleMoves = hanoiPossibleMoves(towers);
  for (int i = 0; i < allPossibleMoves.length; i++) {
    if (isThisWinningMove(allPossibleMoves[i])) {
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
  List<List> GameInstance0101 = [
    [1],
    [],
    [2,3, 4]
  ];
  print(oneMoveToWin(GameInstance0101));

  List<List> GameInstance0201 = [
    [1],
    [2],
    [3, 4]
  ];
  print(twoMoveToWin(GameInstance0201));
   List<List> GameInstance0301 = [
    [1,2],
    [],
    [3, 4]
  ];
  print(threeMoveToWin(GameInstance0301));
}
