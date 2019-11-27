// Tower of Hanoi
// https://www.ocf.berkeley.edu/~shidi/cs61a/w/images/f/f8/Hanoi0.png
// Find possible moves for the given state of Hanoi towers
// input: [[3,4],[1,2],[]]
// output: [[[1,3,4],[2],[]], [[3,4],[2],[1]], [[4],[1,2],[3]]]

List<List<List<int>>> hanoi(List<List<int>> inputState) {
  List<List<List<int>>> finalState = [];

  for (int i = 0; i < inputState.length; i++) {
    for (int j = 0; j < inputState.length; j++) {
      

      if (isValidMove(inputState, i, j)) {
        List<List<int>> copyInputState = [];
        for (List <int> list in inputState) {
          List <int> tempList = List.from(list);
          copyInputState.add(tempList);
        }
        copyInputState[j].insert(0, copyInputState[i][0]);
        
        copyInputState[i].removeAt(0);
        

        finalState.add(copyInputState);
      }
    }
  }
  return finalState;
}

bool isValidMove(List<List<int>> checkList, int from, int to) {
  if (checkList[from].isEmpty) {
    return false;
  }

  if (checkList[to].isEmpty) {
    return true;
  }

  return (checkList[from].first < checkList[to].first);
}

main() {
  print(hanoi([
    [3, 4],
    [1, 2],
    []
  ]));
  print(hanoi([[], [2,3], [4,1]]));
}
