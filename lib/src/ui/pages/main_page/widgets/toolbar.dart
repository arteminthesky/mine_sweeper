part of widgets;

class MainPageToolbar extends Toolbar95 {
  MainPageToolbar({
    Key? key,
    required VoidCallback onRestartClicked,
    required VoidCallback onAboutClicked,
    required VoidCallback onSettingsClicked,
  }) : super(
          key: key,
          actions: [
            GameItem(
              onAboutClicked: onAboutClicked,
              onRestartClicked: onRestartClicked,
            ),
            SettingsItem(
              onClicked: onSettingsClicked,
            ),
          ],
        );
}

class GameItem extends Item95 {
  const GameItem({
    super.key,
    required this.onRestartClicked,
    required this.onAboutClicked,
  }) : super(label: 'Game');

  final VoidCallback onRestartClicked;
  final VoidCallback onAboutClicked;

  @override
  Function(BuildContext context)? get onTap => _onTap;

  void _onTap(BuildContext context) {}

  @override
  Menu95? get menu => Menu95<String>(
        items: [
          MenuItem95<String>(
            label: 'Restart',
            // Strange API. Value type == label type
            value: '0',
          ),
          MenuItem95(
            label: 'About',
            value: '1',
          ),
        ],
        onItemSelected: (String? index) {
          switch (index) {
            case '0':
              onRestartClicked();
              break;
            case '1':
              onAboutClicked();
              break;
            default:
              break;
          }
        },
      );
}

class SettingsItem extends Item95 {
  const SettingsItem({
    super.key,
    required this.onClicked,
  }) : super(label: 'Settings');

  final VoidCallback onClicked;

  @override
  Function(BuildContext context)? get onTap => (_) => onClicked();
}
