List<List> hanoiPossibleMoves(List<List> towers) {
  List<List> towersPossibleOutput = [];
  //lets assume there are only 3 towers
  for (int i = 0; i < 3; i++) {
    if (towers[i].isEmpty) {
      continue;
    }
    int discToMove = towers[i].first;
    //  print(discToMove);//#debug
    for (int j = 0; j < 3; j++) {
      if (i == j) {
        continue;
      }
      if (towers[j].isEmpty || discToMove < towers[j].first) {
        towers[i].removeAt(0);
        towers[j].insert(0, discToMove); // x=5
//        print('towers $i: $towers'); //#debug
        towersPossibleOutput.add(copyList(towers));
        towers[j].removeAt(0);
        towers[i].insert(0, discToMove);
      }
    }
  }

  //--------------------
  return towersPossibleOutput;
}

// input: [[3,4],[1,2],[]]
List<List> copyList(List<List> copyFrom) {
  List<List> copyTo = [];
  for (List list in copyFrom) {
    List tempList = List.from(list);
    copyTo.add(tempList);
  }
  return copyTo;
}