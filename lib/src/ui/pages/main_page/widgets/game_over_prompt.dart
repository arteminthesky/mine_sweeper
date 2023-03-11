part of widgets;

class GameOverPrompt extends StatefulWidget {
  const GameOverPrompt({
    Key? key,
    required this.model,
    required this.child,
  }) : super(key: key);

  final MineSweeperModel model;
  final Widget child;

  @override
  State<GameOverPrompt> createState() => _GameOverPromptState();
}

class _GameOverPromptState extends State<GameOverPrompt> {
  StreamSubscription<GameState?>? _gameStateSubscription;

  @override
  void initState() {
    super.initState();
    _subscribeOnState();
  }

  @override
  void didUpdateWidget(covariant GameOverPrompt oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      _gameStateSubscription?.cancel();
      _subscribeOnState();
    }
  }

  void _subscribeOnState() {
    _gameStateSubscription =
        widget.model.stateStream.distinct().listen(_onNewState);
  }

  void _onNewState(GameState? state) async {
    if (state == GameState.gameOver) {
      var result = await showDialog95(
        context: context,
        title: 'Game Over',
        message: 'Try again?',
        actions: [
          const Action95(
            value: true,
            label: 'Retry',
          ),
        ],
      );

      if (result == true) {
        widget.model.start();
      } else {
        widget.model.end();
      }
    }
  }

  @override
  void dispose() {
    _gameStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
