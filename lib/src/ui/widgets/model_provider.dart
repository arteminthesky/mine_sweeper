import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mine_sweeper/src/model/mine_sweeper_model.dart';

class ModelProvider extends InheritedWidget {
  const ModelProvider({
    super.key,
    required super.child,
    required this.model,
  });

  final MineSweeperModel model;

  @override
  bool updateShouldNotify(ModelProvider oldWidget) {
    return model != oldWidget.model;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<MineSweeperModel>(
      'model',
      model,
      showName: false,
    ));
  }

  static MineSweeperModel of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ModelProvider>()!.model;
  }
}
