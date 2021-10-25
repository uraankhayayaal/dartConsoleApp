import '../models/Course.dart';
import '../views/View.dart';
import 'Controller.dart';

class CourseController extends Controller {
  CourseController(route) : super(route);

  void prices(View view) {
    Course course = Course("Математика", 800);
    course.printNamePrice();
    course.setAnnualSum(course.price);
    print("Годовая стоимость: " + course.getAnnualSum().toString() + " руб.");

    view.printColored("Желтый", "Magenta");
  }
}
