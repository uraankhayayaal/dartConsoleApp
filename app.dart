import 'controllers/router.dart';
import 'helpers/ParametersValidator.dart';

void main(List<String> args) {
  var app = Application(args);
  app.executeCommands();
}

class Application {
  final List<String> args;
  Application(this.args);

  void executeCommands() {
    ParametersValidator parametersValidator = ParametersValidator(this.args);
    if (parametersValidator.validate()) {
      for (var route in this.args) {
        router[route]!();
      }
    }
  }
}
