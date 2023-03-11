import 'package:flutter/material.dart';
import 'package:mine_sweeper/src/model/mine_sweeper_model.dart';
import 'package:mine_sweeper/src/ui/navigation/navigation.dart';
import 'package:mine_sweeper/src/ui/widgets/model_provider.dart';

void main() {
  runApp(MyApp(model: ClassicMineSweeperModel()));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.model,
  });

  final MineSweeperModel model;

  @override
  Widget build(BuildContext context) {
    return ModelProvider(
      model: model,
      child: MaterialApp.router(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: router,
      ),
    );
  }
}
