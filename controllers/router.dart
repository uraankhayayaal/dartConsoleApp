import 'ChildController.dart';
import 'CourseController.dart';

Map<String, void Function()> router = {
  'course/prices': () => CourseController().prices(),
  'Child': () => ChildController(),
};
