import 'package:freezed_annotation/freezed_annotation.dart';

part 'cell.freezed.dart';

enum CellState {
  opened,
  closed,
  flagged,
}

@freezed
class Cell with _$Cell {
  const factory Cell.mine(CellState state) = Mine;

  const factory Cell.free(CellState state, int minesAround) = Free;

  static Cell markCell(Cell cell, CellState state) {
    return cell.map(
      mine: (mine) => mine.copyWith(state: state),
      free: (free) => free.copyWith(state: state),
    );
  }
}
