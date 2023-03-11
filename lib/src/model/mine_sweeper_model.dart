import 'dart:async';

import 'package:mine_sweeper/src/model/cell.dart';
import 'package:mine_sweeper/src/model/field.dart';
import 'package:mine_sweeper/src/model/utils/field_generator.dart';
import 'package:mine_sweeper/src/model/utils/matrix_deep_copy.dart';
import 'package:mine_sweeper/src/model/utils/recursive_opener.dart';

enum GameState {
  idle,
  win,
  gameOver,
}

abstract class MineSweeperModel {
  Field? get field;

  GameState? get gameState;

  Stream<Field?> get fieldStream;

  Stream<GameState?> get stateStream;

  void start();

  void openCell(int x, int y);

  void putFlag(int x, int y);

  void end();
}

class ClassicMineSweeperModel extends MineSweeperModel {
  final StreamController<Field?> _fieldStreamController =
      StreamController.broadcast();
  final StreamController<GameState?> _stateStreamController =
      StreamController.broadcast();

  Field? _field;
  GameState? _gameState;

  @override
  Field? get field => _field;

  @override
  GameState? get gameState => _gameState;

  @override
  Stream<GameState?> get stateStream => _stateStreamController.stream;

  @override
  Stream<Field?> get fieldStream => _fieldStreamController.stream;

  @override
  void openCell(int x, int y) {
    if (_gameState == GameState.gameOver) return;

    var newField = _markCell(
        x, y, CellState.opened, (cell) => cell.state == CellState.closed);

    final cell = newField.matrix[x][y];

    var newState = cell is Mine ? GameState.gameOver : GameState.idle;

    if (cell is! Mine) {
      newField = RecursiveOpener.openRecursively(newField, x, y);
    }

    _updateState(newField, newState);
  }

  @override
  void putFlag(int x, int y) {
    if (_gameState == GameState.gameOver) return;

    var newField = _markCell(
      x,
      y,
      CellState.flagged,
      (cell) => cell.state == CellState.closed,
    );

    _updateState(newField, GameState.idle);
  }

  Field _markCell(
    int x,
    int y,
    CellState cellState,
    bool Function(Cell) canBeMarked,
  ) {
    final safeField = _field;
    if (safeField == null) throw Exception('Start game before');

    var newMatrix = MatrixDeepCopy.copy(safeField.matrix);
    if (canBeMarked(newMatrix[x][y])) {
      newMatrix[x][y] = Cell.markCell(newMatrix[x][y], cellState);
    }

    return Field(newMatrix);
  }

  @override
  void start() {
    var field = FieldGenerator().generateField(20, 20, 50);
    var gameState = GameState.idle;

    _updateState(field, gameState);
  }

  @override
  void end() {
    _updateState(null, null);
  }

  void _updateState(Field? field, GameState? state) {
    _field = field;
    _gameState = state;
    _fieldStreamController.add(_field);
    _stateStreamController.add(_gameState);
  }
}
