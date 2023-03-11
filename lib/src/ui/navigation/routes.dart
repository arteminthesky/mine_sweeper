part of navigation;

class Paths {
  Paths._();

  static const main = '/';
  static const settings = '/settings';
  static const about = '/about';
}

final routes = [
  GoRoute(
    path: Paths.main,
    builder: _createMainPage,
  ),
  GoRoute(
    path: Paths.about,
    builder: _createAbout,
  ),
  GoRoute(
    path: Paths.settings,
    builder: _createSettings,
  ),
];

Widget _createMainPage(BuildContext context, GoRouterState? state) {
  return const MainPage();
}

Widget _createAbout(BuildContext context, GoRouterState? state) {
  return const AboutPage();
}

Widget _createSettings(BuildContext context, GoRouterState? state) {
  return const AboutPage();
}
