import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(hanoi(([[], [2,3], [4,1]])), [[[2], [3], [4, 1]], [[], [3], [2, 4, 1]], [[4], [2, 3], [1]]]

);
  expect(isValidMove([[], [3,4]],0,0), false);
  });
}
