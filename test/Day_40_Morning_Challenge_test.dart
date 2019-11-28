import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('1 move to win', () {
    expect(oneMoveToWin([[2 ,1],[],[3, 4]]), null);//required 2 move to win
    expect(oneMoveToWin([[1],[],[2, 3, 4]]), [[], [], [1, 2, 3, 4]]
);
    
  });
}
