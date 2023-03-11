import 'package:mine_sweeper/src/model/cell.dart';
import 'package:mine_sweeper/src/model/field.dart';
import 'package:mine_sweeper/src/model/utils/matrix_deep_copy.dart';
import 'package:mine_sweeper/src/model/utils/pair.dart';

class RecursiveOpener {
  static const _steps = [
    Pair(0, 1),
    Pair(0, -1),
    Pair(-1, 0),
    Pair(1, 0),
  ];

  static Field openRecursively(Field field, int x, int y) {
    assert(field.matrix[x][y] is! Mine);
    // Deep copy of the given field
    var newMatrix = MatrixDeepCopy.copy(field.matrix);

    bool isInsideField(Pair pair) {
      int x = pair.x;
      int y = pair.y;

      return x >= 0 &&
          y >= 0 &&
          x < newMatrix.length &&
          y < newMatrix.first.length;
    }

    var queue = <Pair>[];

    var currentCell = newMatrix[x][y];
    if (currentCell is Free && currentCell.minesAround == 0) {
      queue.add(Pair(x, y));
    }

    try {
      while (queue.isNotEmpty) {
        var currentCell = queue.removeLast();
        for (final step in _steps) {
          final nextOpenedCell =
              Pair(currentCell.x + step.x, currentCell.y + step.y);

          if (isInsideField(nextOpenedCell) &&
              newMatrix[nextOpenedCell.x][nextOpenedCell.y].state !=
                  CellState.opened) {
            final cell = newMatrix[nextOpenedCell.x][nextOpenedCell.y];
            if (cell is Free) {
              newMatrix[nextOpenedCell.x][nextOpenedCell.y] =
                  cell.copyWith(state: CellState.opened);
              if (cell.minesAround == 0) {
                queue.add(nextOpenedCell);
              }
            }
          }
        }
      }
    } on Object? catch (e, s) {
      print('Error while open cell: $x: $y: $e, $s');

      rethrow;
    }

    return Field(newMatrix);
  }
}
