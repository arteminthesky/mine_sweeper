import 'package:mine_sweeper/src/model/cell.dart';
import 'package:mine_sweeper/src/model/utils/pair.dart';

const _steps = [
  Pair(-1, -1),
  Pair(-1, 0),
  Pair(-1, 1),
  Pair(0, 1),
  Pair(0, -1),
  Pair(1, -1),
  Pair(1, 0),
  Pair(1, 1),
];

class MinesAroundCalculator {
  static int calculateMinesAround(List<List<Cell>> matrix, int x, int y) {
    bool isInsideField(Pair pair) {
      int x = pair.x;
      int y = pair.y;

      return x >= 0 && y >= 0 && x < matrix.length && y < matrix.first.length;
    }

    for (int i = 0; i < matrix.length; i++) {
      for (int j = 0; j < matrix.first.length; j++) {}
    }
    return _steps.fold(
      0,
      (previousValue, step) {
        var cell = step + Pair(x, y);
        return previousValue +
            (isInsideField(cell) && matrix[cell.x][cell.y] is Mine ? 1 : 0);
      },
    );
  }
}
