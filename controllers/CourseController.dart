import '../models/Course.dart';

class CourseController {
  void prices() {
    Course course = Course("Математика", 800);
    course.printNamePrice();
    course.setAnnualSum(course.price);
    print("Годовая стоимость: " + course.getAnnualSum().toString() + " руб.");

    String text = "Желтый";
    // Black:   \x1B[30m
    // Red:     \x1B[31m
    // Green:   \x1B[32m
    // Yellow:  \x1B[33m
    // Blue:    \x1B[34m
    // Magenta: \x1B[35m
    // Cyan:    \x1B[36m
    // White:   \x1B[37m
    // Reset:   \x1B[0m
    print("\x1B[33m$text\x1B[0m" + "\x1B[31mКрасный\x1B[0m");
  }
}
