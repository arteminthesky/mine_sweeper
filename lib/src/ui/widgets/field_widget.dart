import 'package:flutter/widgets.dart';
import 'package:mine_sweeper/src/model/field.dart';
import 'package:mine_sweeper/src/ui/widgets/cell_widget.dart';

typedef OnCellTap = void Function(int x, int y);

class FieldWidget extends StatelessWidget {
  const FieldWidget({
    Key? key,
    required this.field,
    required this.onCellTap,
  }) : super(key: key);

  final Field field;
  final OnCellTap onCellTap;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: field.matrix.length,
      ),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < field.matrix.first.length; i++)
          for (int j = 0; j < field.matrix.length; j++)
            CellWidget(
              cell: field.matrix[j][i],
              onCellTap: () {
                onCellTap.call(j, i);
              },
              onCellLongTap: () {},
            ),
      ],
    );
    return Row(
      children: [
        for (int i = 0; i < field.matrix.length; i++)
          Expanded(
            child: Column(
              children: [
                for (int j = 0; j < field.matrix.first.length; j++)
                  CellWidget(
                    cell: field.matrix[i][j],
                    onCellTap: () {
                      onCellTap.call(i, j);
                    },
                    onCellLongTap: () {},
                  ),
              ],
            ),
          )
      ],
    );
  }
}
