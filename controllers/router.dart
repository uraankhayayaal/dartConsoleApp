import '../views/CoursePrices.dart';
import 'ChildController.dart';
import 'CourseController.dart';

Map<String, void Function()> router = {
  'course/prices': () =>
      CourseController('course/prices').prices(CoursePrices()),
  'child/add': () => ChildController('course/prices'),
};
