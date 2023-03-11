import 'dart:math';

import 'package:mine_sweeper/src/model/cell.dart';
import 'package:mine_sweeper/src/model/field.dart';
import 'package:mine_sweeper/src/model/utils/mines_around_calculator.dart';
import 'package:mine_sweeper/src/model/utils/pair.dart';

class FieldGenerator {
  Field generateField(int width, int height, int countOfMines) {
    final matrix = List.generate(
      width,
      (_) => List.generate(
        height,
        (_) => const Cell.free(CellState.closed, 0),
      ),
    );

    final random = Random();
    Pair generateMine() {
      return Pair(random.nextInt(width), random.nextInt(height));
    }

    final minesSet = <Pair>{};

    while (minesSet.length != countOfMines) {
      minesSet.add(generateMine());
    }

    for (final mine in minesSet) {
      matrix[mine.x][mine.y] = const Cell.mine(CellState.closed);
    }

    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        if (matrix[i][j] is! Mine) {
          final minesAround =
              MinesAroundCalculator.calculateMinesAround(matrix, i, j);
          matrix[i][j] = Cell.free(CellState.closed, minesAround);
        }
      }
    }

    return Field(matrix);
  }
}
