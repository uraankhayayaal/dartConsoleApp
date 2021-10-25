import 'colors.dart';

class View {
  void render(msg) {
    print(msg);
  }

  void printColored(msg, color) {
    String colorCode = '\x1B[' + (colors[color] ?? '37') + 'm';
    print("$colorCode$msg\x1B[0m");
  }
}
