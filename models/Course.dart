import 'Lesson.dart';

class Course extends Lesson with LessonAnnualSum {
  Course(String title, double price) : super(title, price);
}
