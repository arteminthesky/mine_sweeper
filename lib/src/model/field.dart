import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mine_sweeper/src/model/cell.dart';

part 'field.freezed.dart';

@freezed
class Field with _$Field {
  const factory Field(List<List<Cell>> matrix) = _Field;
}
