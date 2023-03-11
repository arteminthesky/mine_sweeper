import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:mine_sweeper/src/model/cell.dart';
import 'package:mine_sweeper/src/ui/resources/typography.dart';

class CellWidget extends StatelessWidget {
  const CellWidget({
    Key? key,
    required this.cell,
    required this.onCellTap,
    required this.onCellLongTap,
  }) : super(key: key);

  final Cell cell;
  final VoidCallback onCellTap;
  final VoidCallback onCellLongTap;

  @override
  Widget build(BuildContext context) {
    var safeCell = cell;

    Widget child = KeyedSubtree(
      key: const ValueKey('cell'),
      child: Center(
        child: safeCell.state == CellState.opened
            ? CellType(cell: cell)
            : const Offstage(),
      ),
    );

    if (safeCell.state == CellState.opened) {
      return Material(
        type: MaterialType.canvas,
        color: Colors.grey,
        shape: Border.all(
          width: 0.5,
          color: Colors.blueGrey,
        ),
        borderOnForeground: true,
        // type: Elevation95Type.down,
        child: child,
      );
    } else {
      child = Button95(
        padding: EdgeInsets.zero,
        onTap: onCellTap,
        child: FittedBox(
          fit: BoxFit.contain,
          child: child,
        ),
      );
    }

    return AspectRatio(
      aspectRatio: 1,
      child: child,
    );
  }
}

class CellType extends StatelessWidget {
  const CellType({Key? key, required this.cell}) : super(key: key);

  final Cell cell;

  @override
  Widget build(BuildContext context) {
    return cell.map(
      mine: (mine) => Text('M'),
      free: (free) {
        switch (free.minesAround) {
          case 0:
            return const Offstage();
          default:
            return _Digit(
              value: free.minesAround,
            );
        }
      },
    );
  }
}

class _Digit extends StatelessWidget {
  const _Digit({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString(),
      style: MineSweeperTypography.digitTextStyle.copyWith(
        color: _defineColor(),
      ),
    );
  }

  Color _defineColor() {
    switch (value) {
      case 1:
        return Colors.indigo;
      case 2:
        return Colors.green;
      case 3:
        return Colors.red;
      case 4:
        return Colors.indigoAccent;
      case 5:
        return Colors.brown;
      case 6:
        return Colors.greenAccent;
      case 7:
        return Colors.black;
      case 8:
        return Colors.grey;
      default:
        return Colors.black;
    }
  }
}
