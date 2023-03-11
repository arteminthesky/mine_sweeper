import 'package:flutter/cupertino.dart';
import 'package:flutter95/flutter95.dart';
import 'package:go_router/go_router.dart';
import 'package:mine_sweeper/src/model/field.dart';
import 'package:mine_sweeper/src/ui/navigation/navigation.dart';
import 'package:mine_sweeper/src/ui/pages/main_page/widgets/widgets.dart';
import 'package:mine_sweeper/src/ui/widgets/field_widget.dart';
import 'package:mine_sweeper/src/ui/widgets/model_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = ModelProvider.of(context);

    return Scaffold95(
      title: 'MineSweeper',
      toolbar: MainPageToolbar(
        onRestartClicked: model.start,
        onAboutClicked: () => GoRouter.of(context).push(Paths.about),
        onSettingsClicked: () => GoRouter.of(context).push(Paths.settings),
      ),
      body: GameOverPrompt(
        model: model,
        child: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = ModelProvider.of(context);

    return Elevation95(
      type: Elevation95Type.down,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            StreamBuilder<Field?>(
              stream: model.fieldStream,
              initialData: model.field,
              builder: (context, snapshot) {
                final field = snapshot.data;

                Widget child;
                if (field == null) {
                  child = const _StartButton();
                } else {
                  child = _Field(
                    field: field,
                  );
                }

                return AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: child,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _StartButton extends StatelessWidget {
  const _StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = ModelProvider.of(context);

    return Button95(
      onTap: model.start,
      child: const Center(
        child: Text('Start'),
      ),
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({
    Key? key,
    required this.field,
  }) : super(key: key);

  final Field field;

  @override
  Widget build(BuildContext context) {
    var model = ModelProvider.of(context);
    return FieldWidget(
      field: field,
      onCellTap: (int x, int y) {
        model.openCell(x, y);
      },
    );
  }
}
