import 'day39.dart';
// Challenge
// Find the best move given the state of Towers of Hanoi board

bool bestHanoiMove(List<List> towers){

return winningMove(hanoiPossibleMoves(towers));
}

bool winningMove( List<List> possibleMoves){
   return possibleMoves.any((oneOfTheMove)=>oneOfTheMove.any((stack)=>stack==[1,2,3,4]));

}

bool winningStack(List stack){
  for(int i=1;i<=stack.length;i++){
    if(stack!=i){
      return false;
    }
  }
  return true;
}
main() {
  print(bestHanoiMove([[],[1],[2,3,4]]));
}
