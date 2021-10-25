abstract class Controller {
  final String route;
  Controller(this.route);

  void render(String view, Map<String, String> params) {}
}
