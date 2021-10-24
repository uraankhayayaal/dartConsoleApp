import '../controllers/router.dart';

class ParametersValidator {
  List<String> args;
  ParametersValidator(this.args);

  final int minParametersCount = 0;
  final int maxParametersCount = 1;

  bool validate() {
    try {
      this.isParametersCountTrue();
      this.isControllerAndAction();
    } catch (e) {
      print(e.toString());
      return false;
    }
    return true;
  }

  bool isParametersCountTrue() {
    if (this.args.length > this.maxParametersCount) {
      throw Exception("Сллишком много параметров");
    } else if (this.args.length < this.minParametersCount) {
      throw Exception("Не хватает параметров");
    } else {
      return true;
    }
  }

  bool isControllerAndAction() {
    for (String route in this.args) {
      if (!router.containsKey(route)) {
        throw Exception("Нет такой команды: $route");
      }
    }
    return true;
  }
}
